using CasosTotalizadores.Entidades;
using CasosTotalizadores.Entidades.Personalizadas;
using DevExpress.Mobile.DataGrid;
using DevExpress.Mobile.DataGrid.Theme;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace CasosTotalizadores.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class TrabajarVisita : TabbedPage
    {
        private VISITAS _visita;
        private BALANCE_TOTALIZADOR _balance;
        //private SGC_REPLICA _sgc;
        public static List<DETALLE_BALANCE_CLIENTES_R> DetalleClientes;
        public static List<ALUMBRADO_PUBLICO> consumos;
        public static DETALLE_BALANCE_CLIENTES_R clienteSelecc;
        public static int pestana = 0;
        Totalizador_Accion_Lectura totalizador_Accion_Lectura;
        //SITUACIONES_VISITA situaciones_visita;
        //ACCIONES_VISITA acciones_visita;
        private int cantFilasClientes, cantFilasConsumos, cantAppearing;
        bool yaAplicado = false;
        string idVisita;
        int countCli, countCon;
        List<long> nises;
        List<long> nisesTrabajo;
        List<long> nisesMaterial;
        List<long> nisesBidireccional;
        public TrabajarVisita(long id_Visita, int tab)
        {
            //App app = Application.Current as App;
            //PaginaPrincipal md = (PaginaPrincipal)app.MainPage;
            cantAppearing = pestana = 0;
            idVisita = Convert.ToString(id_Visita);
            nises = new List<long>();
            nisesTrabajo = new List<long>();
            nisesMaterial = new List<long>();
            nisesBidireccional = new List<long>();
            InitializeComponent();
            pkrAccion.IsEnabled = false;
            lblNumMedidor.IsVisible = false;
            entMed.IsVisible = false;
            pkrSituacion.SelectedIndexChanged += SituacionSeleccionada;
            pkrAccion.SelectedIndexChanged += AccionSeleccionada;
            pkrSituacion.ItemsSource = App.situaciones.FindAll(s => s.ID_TIPO_MEDIDOR == 5 || s.ID_TIPO_MEDIDOR == 1);
            if (tab > 0)
            {
                CurrentPage = Children[tab];
            }

            ThemeManager.ThemeName = Themes.Light;
            //Otros consumos
            gridConsumos.Columns.Add(new TextColumn() { FieldName = "DESCRIPCION", Caption = "Tipo alum", Width = 100 });
            gridConsumos.Columns.Add(new TextColumn() { FieldName = "ESTADO", Caption = "Estado", Width = 100 });
            gridConsumos.Columns.Add(new NumberColumn() { FieldName = "POTENCIA", Caption = "Potencia", Width = 61 });
            gridConsumos.Columns.Add(new NumberColumn() { FieldName = "CANTIDAD", Caption = "Cantidad", Width = 61 });
            gridConsumos.Columns.Add(new SwitchColumn() { FieldName = "POTENCIA_MEDIDA", Caption = "Medida", Width = 28 });

            //Clientes
            grid.Columns.Add(new TextColumn() { FieldName = "ID", Width = 0, Caption = "", IsVisible = true });
            grid.Columns.Add(new TextColumn() { FieldName = "ANOMALIA", Width = 0, Caption = "", IsVisible = true });
            grid.Columns.Add(new TextColumn() { FieldName = "FECHA_MODIFICACION", Width = 0, Caption = "", IsVisible = true });
            grid.Columns.Add(new TextColumn() { FieldName = "FALTA_MATERIAL", Width = 0, Caption = "", IsVisible = true });
            grid.Columns.Add(new TextColumn() { FieldName = "BIDIRECCIONAL", Width = 0, Caption = "", IsVisible = true });
            grid.Columns.Add(new NumberColumn() { FieldName = "NIC", Caption = "NIC", Width = 50 });
            grid.Columns.Add(new TextColumn() { FieldName = "NUM_MEDIDOR", Caption = "Medidor", Width = 50 });
            grid.Columns.Add(new TextColumn() { FieldName = "ESTADO_SUMINISTRO", Caption = "Estado suministro", Width = 100 });
            grid.Columns.Add(new NumberColumn() { FieldName = "CONSUMO", Caption = "CONSUMO", Width = 50 });
            //DetalleClientes = (List<DETALLE_BALANCE_CLIENTES_R>)_visita.CASOS.BALANCE_TOTALIZADOR.DETALLE_BALANCE_CLIENTES_R;
            grid.AllowEditRows = false;
            gridConsumos.AllowEditRows = false;
            grid.AllowDeleteRows = false;
            gridConsumos.AllowDeleteRows = false;
            gridConsumos.RowHeight = 46;
            grid.AllowGroup = false;
            gridConsumos.AllowGroup = false;
            grid.AllowSort = false;
            gridConsumos.AllowSort = false;
            grid.SelectionChanged += OnSelectionChanged;
            gridConsumos.SelectionChanged += OnSelectionChanged2;
            grid.CustomizeCell += OnCustomizeCell;
            buscarCliente.TextChanged += OnTextChanged;
        }
        async void OnOKButtonClicked(object sender, EventArgs args)
        {
            if (!entMed.IsVisible)
                Actualizar();
            else if (!string.IsNullOrEmpty(entMed.Text))
            {
                if (Decimal.TryParse(entMed.Text, out Decimal n))
                {
                    if (entMed.Text.Length < 4 || entMed.Text.Length > 8)
                    {
                        await DisplayAlert("Aviso", "El número de medidor debe contener entre 4 y 8 dígitos", "Ok");
                        return;
                    }
                    overlay.IsVisible = false;
                }
                else
                {
                    await DisplayAlert("Error", "Introduzca un valor numérico", "OK");
                    return;
                }
            }
            else
            {
                await DisplayAlert("Error", "El campo de medidor debe tener algún valor", "OK");
                return;
            }
        }
        private async void Actualizar()
        {
            IsLoading.IsRunning = true;
            overlay.IsVisible = false;
            string mensaje = (await App.Totalizador_AccionManager.ActualizarTotalizador(totalizador_Accion_Lectura)).Content.ReadAsStringAsync().Result.Replace("\"", "");
            if (entLectura.IsEnabled)
            {
                if (await lectura())
                {
                    if (mensaje.Length < 1)
                        await DisplayAlert("Resultado", "Totalizador actualizado", "OK");
                    else
                        await DisplayAlert("Resultado", mensaje, "OK");
                    IsLoading.IsRunning = false;
                }
            }
            else
            {
                if (mensaje.Length < 1)
                    await DisplayAlert("Resultado", "Totalizador actualizado", "OK");
                else
                    await DisplayAlert("Resultado", mensaje, "OK");
                IsLoading.IsRunning = false;
            }
        }

        void OnCancelButtonClicked(object sender, EventArgs args)
        {
            overlay.IsVisible = false;
        }
        protected async override void OnAppearing()
        {
            if (cantAppearing == 0)
            {
                _visita = await App.VisitasManager.ObtenerAsync(idVisita);
                cantAppearing++;

                countCli = countCon = 0;
                buscarCliente.Text = "";
                //grid.Columns["FECHA_MODIFICACION"].IsVisible = false;
                //await Task.Delay(1);
                IsLoading.IsRunning = true;
                IsLoading2.IsRunning = true;
                IsLoading3.IsRunning = true;
                grid.IsVisible = false;
                gridConsumos.IsVisible = false;
                btnAgregar.IsVisible = false;
                btnActualizar.IsEnabled = false;
                btnFinalizar.IsVisible = false;
                btnOtros.IsVisible = false;
                buscarCliente.IsVisible = false;
                if (_visita.CASOS.BALANCE_TOTALIZADOR.TOTALIZADOR.CRITERIO != "TELEMEDIDO" && _visita.CASOS.BALANCE_TOTALIZADOR.TOTALIZADOR.CRITERIO != "DT")
                {
                    if (_visita.MOTIVOS_VISITA.ID == 1)
                        lblLectura.Text = "Primera lectura: ";
                    else
                    {
                        pkrAccion.IsEnabled = false;
                        pkrSituacion.IsEnabled = false;
                        pkrMultiplo.IsEnabled = false;
                        pkrCircuito.IsEnabled = false;
                        pkrTConexion.IsEnabled = false;
                        txtCT.IsEnabled = false;
                        lblLectura.Text = "Segunda lectura: ";
                    }
                    entLectura.IsEnabled = true;
                }
                else
                {
                    entLectura.IsEnabled = false;
                }
                _balance = _visita.CASOS.BALANCE_TOTALIZADOR;
                pkrCircuito.ItemsSource = App.circuitos;
                pkrMultiplo.ItemsSource = App.multiplos.FindAll(m => m.TIPO_MEDIDOR == 5);
                pkrTConexion.ItemsSource = App.tiposConexiones;
                pkrCircuito.SelectedIndex = App.circuitos.IndexOf(App.circuitos.FirstOrDefault(cir => cir.CIRCUITO == _balance.TOTALIZADOR.CIRCUITO));
                pkrMultiplo.SelectedIndex = pkrMultiplo.ItemsSource.IndexOf(App.multiplos.FirstOrDefault(mul => mul.MULTIPLO == Convert.ToString(_balance.TOTALIZADOR.MULTIPLO)));
                pkrTConexion.SelectedIndex = App.tiposConexiones.IndexOf(App.tiposConexiones.FirstOrDefault(tipC => tipC.TIPO_CONEXION == _balance.TOTALIZADOR.TIPO_CONEXION));
                txtCT.Text = _balance.TOTALIZADOR.MATRICULA;
                DetalleClientes = ((List<DETALLE_BALANCE_CLIENTES_R>)_balance.DETALLE_BALANCE_CLIENTES_R).FindAll(dbc => dbc.ASOCIADO == true);
                consumos = (List<ALUMBRADO_PUBLICO>)_balance.TOTALIZADOR.ALUMBRADO_PUBLICO;
                cantFilasClientes = DetalleClientes.Count;
                cantFilasConsumos = consumos.Count;

                if (grid.SelectedRowHandle == 0)
                {
                    grid.SelectedRowHandle = cantFilasClientes;
                }
                if (cantFilasConsumos != 0)
                {
                    consumos.Add(NuevoConsumoStub());
                }
                if (gridConsumos.SelectedRowHandle == 0)
                {
                    gridConsumos.SelectedRowHandle = cantFilasConsumos;
                }
                grid.ItemsSource = DetalleClientes.FindAll(cli => cli.ID > 0);
                gridConsumos.ItemsSource = consumos.FindAll(con => con.CANTIDAD >= 0);
                btnOtros.IsVisible = true;
                buscarCliente.IsVisible = true;
                grid.IsVisible = true;
                gridConsumos.IsVisible = true;
                IsLoading2.IsRunning = false;
                IsLoading3.IsRunning = false;
                if (_visita.MOTIVOS_VISITA.ID == 1)
                {
                    btnAgregar.IsVisible = true;
                    btnVerificarCriterio.IsVisible = true;
                }
                else
                {
                    btnAgregar.IsVisible = false;
                    btnVerificarCriterio.IsVisible = false;
                }
                btnFinalizar.IsVisible = true;
                //_sgc = await App.SGCManager.ObtenerAsync(_balance.TOTALIZADOR.NIS);
                IsLoading.IsRunning = false;
                btnActualizar.IsEnabled = true;
            }
            else
            {
                if (pestana != 0)
                {
                    if (pestana == 1)
                    {
                        buscarCliente.Text = "";
                        IsLoading2.IsRunning = true;
                        grid.Columns["FECHA_MODIFICACION"].IsVisible = true;
                        grid.Columns["FALTA_MATERIAL"].IsVisible = true;
                        //countCli = 0;
                        //cantFilasClientes = DetalleClientes.Count;
                        //if (grid.SelectedRowHandle == 0)
                        //{
                        //grid.SelectedRowHandle = cantFilasClientes;
                        //}
                        //grid.ItemsSource = DetalleClientes.FindAll(cli => cli.ID > 0); 
                        if (clienteSelecc.ASOCIADO == false)
                        {
                            grid.DeleteRow(grid.FindRowByValue("ID", clienteSelecc.ID));
                            countCli = 0;
                            cantFilasClientes = DetalleClientes.Count;
                            if (grid.SelectedRowHandle == 0)
                            {
                                grid.SelectedRowHandle = cantFilasClientes;
                            }
                            grid.ItemsSource = DetalleClientes.FindAll(cli => cli.ID > 0);
                        }
                        else
                        {
                            grid.SetCellValue(grid.FindRowByValue("ID", clienteSelecc.ID), "NUM_MEDIDOR", clienteSelecc.NUM_MEDIDOR);
                            grid.SetCellValue(grid.FindRowByValue("ID", clienteSelecc.ID), "FECHA_MODIFICACION", clienteSelecc.FECHA_MODIFICACION);
                            grid.SetCellValue(grid.FindRowByValue("ID", clienteSelecc.ID), "FALTA_MATERIAL", clienteSelecc.FALTA_MATERIAL);
                        }
                    }
                    else
                    {
                        countCon = 0;
                        cantFilasConsumos = consumos.Count;
                        if (cantFilasConsumos != 0)
                        {
                            consumos.Add(NuevoConsumoStub());
                        }
                        if (gridConsumos.SelectedRowHandle == 0)
                        {
                            gridConsumos.SelectedRowHandle = cantFilasConsumos;
                        }
                        gridConsumos.ItemsSource = consumos.FindAll(con => con.CANTIDAD >= 0);
                    }
                }
            }

        }
        async void OnSelectionChanged(object sender, RowEventArgs e)
        {
            if (countCli <= 2 && (e.RowHandle == 0 || e.RowHandle == cantFilasClientes))
            {
                countCli++;
                grid.SelectedRowHandle = cantFilasClientes;
            }
            else if (e.RowHandle != cantFilasClientes)
            {
                IRowData rowData = grid.GetRow(e.RowHandle);
                if (rowData != null)
                {
                    clienteSelecc = rowData.DataObject as DETALLE_BALANCE_CLIENTES_R;

                    if (clienteSelecc.ID_DETALLE_BALANCE_CLIENTE is null && _visita.MOTIVOS_VISITA.MOTIVO != "Segunda toma de lectura")
                    {
                        await DisplayAlert("Aviso", "Cliente instalado en esta visita", "OK");
                    }
                    /*else if (clienteSeleccionado.TECNOLOGIA == "TELEMEDIDO" && _visita.MOTIVOS_VISITA.MOTIVO != "Primera visita")
                    {
                        await DisplayAlert("Aviso", "Cliente telemedido, no necesita toma de lectura", "OK");
                        grid.SelectedRowHandle = cantFilasClientes;
                    }*/
                    else
                        await Navigation.PushAsync(new TrabajarCliente(clienteSelecc, _visita));
                    grid.SelectedRowHandle = cantFilasClientes;
                }
            }
        }
        async void OnSelectionChanged2(object sender, RowEventArgs e)
        {
            if (countCon <= 1 && (e.RowHandle == 0 || e.RowHandle == cantFilasConsumos))
            {
                countCon++;
                gridConsumos.SelectedRowHandle = cantFilasConsumos;
            }
            else if (e.RowHandle != cantFilasConsumos)
            {
                IRowData rowData = gridConsumos.GetRow(e.RowHandle);
                if (rowData != null)
                {
                    ALUMBRADO_PUBLICO consumoSeleccionado = rowData.DataObject as ALUMBRADO_PUBLICO;
                    await Navigation.PushAsync(new EditarOtrosConsumos(consumoSeleccionado, _visita));
                    gridConsumos.SelectedRowHandle = cantFilasConsumos;
                }
            }
        }
        void OnCustomizeCell(CustomizeCellEventArgs e)
        {
            DETALLE_BALANCE_CLIENTES_R clienteSeleccionado = NuevoDetalleClienteStub();
            if (e.RowHandle < cantFilasClientes && e.RowHandle >= 0)
            {
                IRowData rowData = grid.GetRow(e.RowHandle);
                if (rowData != null)
                {
                    clienteSeleccionado = rowData.DataObject as DETALLE_BALANCE_CLIENTES_R;
                    if (clienteSeleccionado.TECNOLOGIA == "TELEMEDIDO")
                        Debug.WriteLine(clienteSeleccionado.NIS + ":" + clienteSeleccionado.CONSUMO);
                }
            }
            if (pestana == 1 && e.FieldName == "FECHA_MODIFICACION" && clienteSeleccionado.FECHA_MODIFICACION != null && clienteSeleccionado.ID > 0)
            {
                nisesTrabajo.Add(clienteSeleccionado.ID);
            }
            if (pestana == 1 && e.FieldName == "FALTA_MATERIAL" && clienteSeleccionado.ID > 0)
            {
                if (clienteSeleccionado.FALTA_MATERIAL == true)
                    nisesMaterial.Add(clienteSeleccionado.ID);
                else
                    nisesMaterial.Remove(clienteSeleccionado.ID);
            }

            if (!yaAplicado)
            {
                if (e.FieldName == "ANOMALIA" || e.FieldName == "FECHA_MODIFICACION" || e.FieldName == "FALTA_MATERIAL" || e.FieldName == "BIDIRECCIONAL")
                {
                    if (e.Value != null)
                    {
                        //DateTime fechatra;
                        if (e.FieldName == "ANOMALIA" && clienteSeleccionado.ID > 0 && (clienteSeleccionado.ANOMALIA != null && clienteSeleccionado.ANOMALIA != "[NULL]"))
                            nises.Add(clienteSeleccionado.ID);
                        if (e.FieldName == "FECHA_MODIFICACION" && clienteSeleccionado.FECHA_MODIFICACION != null && clienteSeleccionado.ID > 0)
                        {
                            nisesTrabajo.Add(clienteSeleccionado.ID);
                        }
                        if (e.FieldName == "FALTA_MATERIAL" && clienteSeleccionado.ID > 0)
                            if (clienteSeleccionado.FALTA_MATERIAL == true)
                                nisesMaterial.Add(clienteSeleccionado.ID);
                        if (e.FieldName == "BIDIRECCIONAL" && clienteSeleccionado.ID > 0)
                            if (clienteSeleccionado.BIDIRECCIONAL == true)
                                nisesBidireccional.Add(clienteSeleccionado.ID);
                    }
                }
                else if (cantFilasClientes - 1 == e.RowHandle && e.FieldName == "ESTADO_SUMINISTRO")
                {
                    grid.Columns["ID"].IsVisible = false;
                    grid.Columns["ANOMALIA"].IsVisible = false;
                    grid.Columns["FECHA_MODIFICACION"].IsVisible = false;
                    grid.Columns["FALTA_MATERIAL"].IsVisible = false;
                    grid.Columns["BIDIRECCIONAL"].IsVisible = false;
                    yaAplicado = true;
                }
            }
            else
            {

                if (nises.Contains(clienteSeleccionado.ID) && _visita.ID_MOTIVO_VISITA == 1)
                {
                    e.ForeColor = Color.White;
                    e.BackgroundColor = Color.Red;
                }
                if (nisesBidireccional.Contains(clienteSeleccionado.ID))
                {
                    e.ForeColor = Color.Black;
                    e.BackgroundColor = Color.Aqua;
                }
                if (nisesTrabajo.Contains(clienteSeleccionado.ID))
                {
                    e.ForeColor = Color.White;
                    e.BackgroundColor = Color.Green;
                }
                if (nisesMaterial.Contains(clienteSeleccionado.ID))
                {
                    e.ForeColor = Color.Black;
                    e.BackgroundColor = Color.OrangeRed;
                }
                if (pestana == 1)
                {
                    if (cantFilasClientes - 1 == e.RowHandle && e.FieldName == "ESTADO_SUMINISTRO")
                    {
                        grid.Columns["FECHA_MODIFICACION"].IsVisible = false;
                        grid.Columns["FALTA_MATERIAL"].IsVisible = false;
                        IsLoading2.IsRunning = false;
                    }
                }
            }
            e.Handled = true;
        }
        async private void Instalar_Medidor(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new InstalarMedidor(_visita));
        }
        async private void Agregar_Otros(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new OtrosConsumos(_balance.TOTALIZADOR));
        }
        private async void Actualizar_Medidor(object sender, EventArgs e)
        {
            totalizador_Accion_Lectura = new Totalizador_Accion_Lectura();
            totalizador_Accion_Lectura.Totalizador = new TOTALIZADOR();
            totalizador_Accion_Lectura.Situaciones_Visita = new SITUACIONES_VISITA();
            totalizador_Accion_Lectura.Acciones_visita = new ACCIONES_VISITA();
            totalizador_Accion_Lectura.Totalizador.ID = _balance.TOTALIZADOR.ID;
            totalizador_Accion_Lectura.Totalizador.NIS = _balance.TOTALIZADOR.NIS;
            if (pkrSituacion.SelectedItem is null && _visita.MOTIVOS_VISITA.MOTIVO != "Segunda toma de lectura")
            {
                await DisplayAlert("Error", "Debe seleccionar una situación", "OK");
                return;
            }
            else if (pkrAccion.SelectedItem is null && _visita.MOTIVOS_VISITA.MOTIVO != "Segunda toma de lectura")
            {
                await DisplayAlert("Error", "Debe seleccionar una acción", "OK");
                return;
            }
            if (_visita.MOTIVOS_VISITA.MOTIVO != "Segunda toma de lectura")
            {
                totalizador_Accion_Lectura.Situaciones_Visita.ID_SITUACION = App.detalle_Situaciones.Find(ds => ds.ID_ACCION == ((ACCIONES_EJECUTADAS)pkrAccion.SelectedItem).ID && (ds.ID_SITUACION == ((SITUACIONES_ENCONTRADAS)pkrSituacion.SelectedItem).ID)).ID;
                totalizador_Accion_Lectura.Situaciones_Visita.ID_VISITA = _visita.ID;
                totalizador_Accion_Lectura.Acciones_visita.ID_ACCION = ((ACCIONES_EJECUTADAS)pkrAccion.SelectedItem).ID;
                totalizador_Accion_Lectura.Acciones_visita.ID_VISITA = _visita.ID;
                if (pkrCircuito.SelectedIndex >= 0)
                    totalizador_Accion_Lectura.Totalizador.CIRCUITO = pkrCircuito.Items[pkrCircuito.SelectedIndex];
                if (pkrMultiplo.SelectedIndex >= 0)
                    totalizador_Accion_Lectura.Totalizador.MULTIPLO = Int32.Parse(pkrMultiplo.Items[pkrMultiplo.SelectedIndex]);
                if (pkrTConexion.SelectedIndex >= 0)
                    totalizador_Accion_Lectura.Totalizador.TIPO_CONEXION = pkrTConexion.Items[pkrTConexion.SelectedIndex];
                if (!string.IsNullOrEmpty(txtCT.Text))
                    totalizador_Accion_Lectura.Totalizador.MATRICULA = txtCT.Text;
                if (entMed.IsVisible)
                    totalizador_Accion_Lectura.Totalizador.NUM_MEDIDOR = entMed.Text;
                else
                    totalizador_Accion_Lectura.Totalizador.NUM_MEDIDOR = _balance.TOTALIZADOR.NUM_MEDIDOR;
                totalizador_Accion_Lectura.Totalizador.MARCA = _balance.TOTALIZADOR.MARCA;
            }
            lblNumMedidor.IsVisible = false;
            entMed.Text = "";
            entMed.IsVisible = false;

            string mensaje = string.Empty;
            if (_visita.MOTIVOS_VISITA.MOTIVO == "Primera visita")
            {
                IsLoading.IsRunning = true;
                mensaje = (await App.Totalizador_AccionManager.SaveTaskAsync(totalizador_Accion_Lectura, true)).Content.ReadAsStringAsync().Result.Replace("\"", "");
                IsLoading.IsRunning = false;
                if (!String.IsNullOrEmpty(mensaje))
                {
                    lblMensaje.IsVisible = true;
                    lblMensaje.Text = "Si realiza estos cambios, " + mensaje;
                    overlay.IsVisible = true;
                }
                else
                    Actualizar();
            }
            else
            {
                if (await lectura())
                {
                    await DisplayAlert("Aviso", "Medida de lectura registrada", "OK");
                    entLectura.Text = "";
                }
            }
            IsLoading.IsRunning = false;

        }
        async private Task<bool> lectura()
        {
            if (entLectura.IsEnabled)
            {
                if (!string.IsNullOrEmpty(entLectura.Text))
                {
                    if (Decimal.TryParse(entLectura.Text, out Decimal n))
                    {
                        LECTURAS_VISITAS lECTURAS_VISITAS = new LECTURAS_VISITAS();

                        if (_visita.MOTIVOS_VISITA.MOTIVO == "Primera visita")
                        {
                            lECTURAS_VISITAS.FECHA_LECTURA_1 = DateTime.Now;
                            lECTURAS_VISITAS.ID_VISITA_1 = _visita.ID;
                            //lECTURAS_VISITAS.VISITAS = _visita;
                            lECTURAS_VISITAS.LECTURA_1 = Convert.ToDecimal(entLectura.Text);

                        }
                        else
                        {
                            lECTURAS_VISITAS.FECHA_LECTURA_2 = DateTime.Now;
                            lECTURAS_VISITAS.ID_VISITA_2 = _visita.ID;
                            //lECTURAS_VISITAS.VISITAS1 = _visita;
                            lECTURAS_VISITAS.LECTURA_2 = Convert.ToDecimal(entLectura.Text);
                        }
                        IsLoading.IsRunning = true;
                        if (_visita.MOTIVOS_VISITA.MOTIVO == "Primera visita" && entLectura.IsEnabled)
                        {
                            await App.LecturaManager.SaveTaskAsync(lECTURAS_VISITAS, true);
                            return true;
                        }
                        else if (entLectura.IsEnabled)
                        {
                            await App.LecturaManager.SaveTaskAsync(lECTURAS_VISITAS, false);
                            return true;
                        }
                    }
                    else
                    {
                        await DisplayAlert("Error", "Introduzca un valor numérico en la lecura", "OK");
                        return false;
                    }
                }
                else
                {
                    await DisplayAlert("Error", "El campo de lectura debe tener algún valor", "OK");
                    return false;
                }
            }
            return false;
        }
        private DETALLE_BALANCE_CLIENTES_R NuevoDetalleClienteStub()
        {
            DETALLE_BALANCE_CLIENTES_R nuevoCliente = new DETALLE_BALANCE_CLIENTES_R
            {
                NIS = 0,
                NIC = 0,
                NUM_MEDIDOR = "0"
            };
            return nuevoCliente;
        }
        private ALUMBRADO_PUBLICO NuevoConsumoStub()
        {
            ALUMBRADO_PUBLICO nuevoConsumo = new ALUMBRADO_PUBLICO
            {
                CANTIDAD = -1,
                POTENCIA = 0
            };
            return nuevoConsumo;
        }

        private async void btnFinalizar_Clicked(object sender, EventArgs e)
        {
            int cantTrabajados = DetalleClientes.FindAll(dc => dc.FECHA_MODIFICACION != null || dc.FALTA_MATERIAL == true).Count;
            if (cantFilasClientes != cantTrabajados)
            {
                if (_visita.MOTIVOS_VISITA.MOTIVO == "Primera visita")
                    await DisplayAlert("", "Faltan " + (cantFilasClientes - cantTrabajados) + " clientes por trabajar", "OK");
                else
                {
                    int cantFaltaMaterial = DetalleClientes.FindAll(dc => dc.FALTA_MATERIAL == true || dc.FECHA_MODIFICACION != null).Count;
                    await DisplayAlert("", "Faltan " + (cantFilasClientes - cantFaltaMaterial) + " clientes por toma de lectura", "OK");
                }
            }
            else
            {
                if (HttpStatusCode.RequestedRangeNotSatisfiable == (await App.VisitasManager.SaveTaskAsync(new VISITAS { ID = _visita.ID, ID_ESTATUS_VISITA = 0 }, false)).StatusCode)
                {
                    await DisplayAlert("", "Totalizador aún no trabajado", "OK");
                }
                else
                {
                    bool cerrar = await DisplayAlert("AVISO", "¿ESTA SEGURO QUE DESEA CERRAR LA VISITA?", "Aceptar", "Cancelar");
                    if (cerrar)
                    {
                        btnAgregar.IsVisible = false;
                        btnFinalizar.IsVisible = false;
                        buscarCliente.IsVisible = false;
                        grid.IsVisible = false;
                        IsLoading2.IsRunning = true;
                        _visita.ID_ESTATUS_VISITA = 3;
                        await App.VisitasManager.SaveTaskAsync(new VISITAS { ID = _visita.ID, ID_ESTATUS_VISITA = 3 }, false);
                        IsLoading2.IsRunning = false;
                        await DisplayAlert("", "Visita cerrada", "OK");
                        await Navigation.PopToRootAsync();
                    }
                }
            }

        }

        private void OnTextChanged(object sender, EventArgs e)
        {
            OnBuscarMedidor(buscarCliente.Text);
        }
        private void OnBuscarMedidor(string texto)
        {
            countCli = 0;
            if (!String.IsNullOrEmpty(texto))
            {
                if (texto.Length > 3)
                {
                    if (DetalleClientes.FindAll(cli => cli.NUM_MEDIDOR.StartsWith(texto)).Count > 0)
                    {
                        grid.ItemsSource = DetalleClientes.FindAll(cli => cli.NUM_MEDIDOR.StartsWith(texto) && cli.ID > 0);
                    }
                    else if (DetalleClientes.FindAll(cli => Convert.ToString(cli.NIS).StartsWith(texto)).Count > 0)
                    {
                        grid.ItemsSource = DetalleClientes.FindAll(cli => Convert.ToString(cli.NIS).StartsWith(texto) && cli.ID > 0);
                    }
                    else if (DetalleClientes.FindAll(cli => Convert.ToString(cli.NIC).StartsWith(texto)).Count > 0)
                    {
                        grid.ItemsSource = DetalleClientes.FindAll(cli => Convert.ToString(cli.NIC).StartsWith(texto) && cli.ID > 0);
                    }
                    else
                    {
                        grid.ItemsSource = DetalleClientes.FindAll(cli => cli.NIC < 0);
                    }
                }
                else if (texto.ToUpper().StartsWith("N") || texto.ToUpper().StartsWith("T"))
                {

                    grid.ItemsSource = DetalleClientes.FindAll(cli => Convert.ToString(cli.TECNOLOGIA).StartsWith(texto.ToUpper()) && cli.ID > 0);

                }
            }
            else
                grid.ItemsSource = DetalleClientes;


        }
        void SituacionSeleccionada(object sender, EventArgs e)
        {
            List<ACCIONES_EJECUTADAS> acciones = new List<ACCIONES_EJECUTADAS>();
            //pkrAccion.ItemsSource = acciones;

            var picker = (Picker)sender;
            int selectedIndex = picker.SelectedIndex;

            if (selectedIndex != -1)
            {
                SITUACIONES_ENCONTRADAS situacion = ((SITUACIONES_ENCONTRADAS)picker.ItemsSource[selectedIndex]);
                //ACCIONES_EJECUTADAS accion = ((DETALLE_SITUACION)picker.ItemsSource[selectedIndex]).ACCIONES_EJECUTADAS;
                foreach (DETALLE_SITUACION detalle in situacion.DETALLE_SITUACION)
                {
                    acciones.Add(App.acciones.Find(a => a.ID == detalle.ID_ACCION));
                }

                pkrAccion.ItemsSource = acciones;
            }
            pkrAccion.IsEnabled = true;

        }
        void AccionSeleccionada(object sender, EventArgs e)
        {
            var picker = (Picker)sender;
            int selectedIndex = picker.SelectedIndex;
            if (selectedIndex != -1)
            {
                ACCIONES_EJECUTADAS accion = ((ACCIONES_EJECUTADAS)picker.ItemsSource[selectedIndex]);
                if (accion.ACCION.Equals("Cambio de medidor") || accion.ACCION.Equals("Instalación de medidor"))
                {
                    lblNumMedidor.IsVisible = true;
                    entMed.IsVisible = true;
                    lblMensaje.IsVisible = false;
                    overlay.IsVisible = true;

                }
            }

        }
        private async void VerificarCriterio(object sender, EventArgs e)
        {
            IsLoading2.IsRunning = true;
            string mensaje = (await App.Totalizador_AccionManager.VerificarCriterio(_balance.TOTALIZADOR.NIS)).Content.ReadAsStringAsync().Result.Replace("\"", "");
            string[] mensajes = mensaje.Split(';');
            IsLoading2.IsRunning = false;
            await DisplayAlert("", mensajes[0], "OK");
            if (mensajes[1] != "N")
            {
                _visita.CASOS.BALANCE_TOTALIZADOR.TOTALIZADOR.CRITERIO = mensajes[1];
                Navigation.RemovePage(Navigation.NavigationStack[Navigation.NavigationStack.Count - 1]);
                Navigation.RemovePage(Navigation.NavigationStack[Navigation.NavigationStack.Count - 2]);
                await Navigation.PushAsync(new InformacionVisita(ref _visita));
            }
        }
    }
}