using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using CasosTotalizadores.Entidades;
using System.IO;
using System.Net;
using System.Collections.Generic;
using CasosTotalizadores.Entidades.Personalizadas;
using System.Linq;

namespace CasosTotalizadores.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class InstalarMedidor : ContentPage
    {
        CLIENTE medidor;
        NO_TOTALIZADOS_DESCONOCIDOS no_totalizado;
        BALANCE_TOTALIZADOR _balanceTotalizador;
        TOTALIZADOR _totalizador;
        VISITAS _visita;
        CLIENTE maestro;
        List<DETALLE_BALANCE_CLIENTES_R> _detalles;
        string x, y, ll, lo;
        bool desconocido = false, otroTotalizador = false, mismoTotalizador = false;
        public InstalarMedidor(VISITAS visita)
        {
            _balanceTotalizador = visita.CASOS.BALANCE_TOTALIZADOR;
            _totalizador = _balanceTotalizador.TOTALIZADOR;
            _visita = visita;
            _detalles = (List<DETALLE_BALANCE_CLIENTES_R>)_balanceTotalizador.DETALLE_BALANCE_CLIENTES_R;
            InitializeComponent();
            lblAviso.IsVisible = false;
            lblLectura.IsVisible = false;
            txtLectura.IsVisible = false;
            lblMedidor.IsVisible = false;
            txtMedidor.IsVisible = false;
            pkrCircuito.ItemsSource = App.circuitos;
            ResetearCampos();
        }
        private async void Button_Clicked(object sender, EventArgs e)
        {
            no_totalizado = null;
            medidor = null;
            if (String.IsNullOrEmpty(txtNis.Text))
            {
                await DisplayAlert("Error", "No puede dejar el campo vacío", "OK");
            }
            else if (txtNis.Text.Length != 7)
            {
                ResetearCampos();
                lblAviso.IsVisible = false;
                lblAviso.Text = "EL NIS DEBE CONTENER 7 DÍGITOS";
                lblAviso.Style = (Style)Application.Current.Resources["ValidationEntryErrorStyle"];
                lblAviso.IsVisible = true;
            }
            else if (txtNis.Text == _totalizador.NIS)
            {
                ResetearCampos();
                lblAviso.IsVisible = false;
                lblAviso.Text = "EL NIS DEBE SER DIFERENTE AL DEL TOTALIZADOR";
                lblAviso.Style = (Style)Application.Current.Resources["ValidationEntryErrorStyle"];
                lblAviso.IsVisible = true;
            }
            else
            {
                IsLoading.IsRunning = true;
                medidor = await App.ClientesManager.ObtenerAsync(txtNis.Text);
                if (medidor == null)
                {
                    no_totalizado = await App.No_Totalizados_DesconocidosManager.ObtenerAsync(txtNis.Text);
                    if (no_totalizado == null)
                    {
                        maestro = await App.Maestro_MedidorManager.ObtenerAsync(txtNis.Text, true);
                        if (maestro == null)
                        {
                            ResetearCampos();
                            lblAviso.IsVisible = false;
                            lblAviso.Text = "EL NIS INTRODUCIDO NO EXISTE";
                            lblAviso.Style = (Style)Application.Current.Resources["ValidationEntryErrorStyle"];
                            lblAviso.IsVisible = true;
                        }
                        else
                        {
                            entryNic.Text = maestro.NIC;
                            entryMatricula.Text = maestro.MATRICULA;
                            entryMedidor.Text = maestro.NUM_MEDIDOR;
                            entryMultiplo.Text = maestro.MULTIPLO.ToString();
                            entryMarca.Text = maestro.MARCA;

                            entrySector.Text = maestro.SECTOR;
                            pkrCircuito.SelectedIndex = App.circuitos.IndexOf(App.circuitos.FirstOrDefault(cir => cir.CIRCUITO == maestro.CIRCUITO));
                            entryLocalidad.Text = maestro.LOCALIDAD;
                            entryMunicipio.Text = maestro.MUNICIPIO;

                            entryEstado.Text = maestro.ESTADO_SUMINISTRO;
                            entryNaturaleza.Text = maestro.TECNOLOGIA;
                            entryTipoTec.Text = maestro.TIPO_TECNOLOGIA;
                            entryTipoCon.Text = maestro.TIPO_CONEXION;
                            swBidireccional.On = maestro.BIDIRECCIONAL.HasValue && maestro.BIDIRECCIONAL.Value;
                            btnMedidor.IsEnabled = true;
                            btnInstalar.IsEnabled = true;
                            x = maestro.X;
                            y = maestro.Y;
                            ll = maestro.LATITUD;
                            lo = maestro.LONGITUD;
                        }
                    }
                    else
                    {
                        entryNic.Text = no_totalizado.NIC;
                        entryMatricula.Text = no_totalizado.MATRICULA;
                        entryMedidor.Text = no_totalizado.NUM_MEDIDOR;
                        entryMultiplo.Text = no_totalizado.MULTIPLO.ToString();
                        entryMarca.Text = no_totalizado.MARCA;

                        entrySector.Text = no_totalizado.SECTOR;
                        pkrCircuito.SelectedIndex = App.circuitos.IndexOf(App.circuitos.FirstOrDefault(cir => cir.CIRCUITO == no_totalizado.CIRCUITO));
                        entryLocalidad.Text = no_totalizado.LOCALIDAD;
                        entryMunicipio.Text = no_totalizado.MUNICIPIO;

                        entryEstado.Text = no_totalizado.ESTADO_SUMINISTRO;
                        entryNaturaleza.Text = no_totalizado.TECNOLOGIA;
                        entryTipoTec.Text = no_totalizado.TIPO_TECNOLOGIA;
                        entryTipoCon.Text = no_totalizado.TIPO_CONEXION;
                        lblAviso.IsVisible = false;
                        swBidireccional.On = no_totalizado.BIDIRECCIONAL.HasValue && no_totalizado.BIDIRECCIONAL.Value;
                        lblAviso.Text = "ESTE NIS ESTÁ MARCADO COMO  " + no_totalizado.TIPO_MEDIDORES.TIPO;
                        lblAviso.Style = (Style)Application.Current.Resources["ValidationEntryWarningStyle"];
                        lblAviso.IsVisible = true;
                        btnMedidor.IsEnabled = true;
                        btnInstalar.IsEnabled = true;
                        desconocido = true;
                        x = no_totalizado.X;
                        y = no_totalizado.Y;
                        ll = no_totalizado.LATITUD;
                        lo = no_totalizado.LONGITUD;
                    }
                }
                else if (_totalizador.ID == medidor.ID_TOTALIZADOR && _detalles.Find(d => d.NIS == Convert.ToInt32(medidor.NIS)) != null)
                {
                    ResetearCampos();
                    lblAviso.IsVisible = false;
                    lblAviso.Text = "ESTE NIS YA ESTÁ ASOCIADO A ESTE TOTALIZADOR.";
                    lblAviso.Style = (Style)Application.Current.Resources["ValidationEntryErrorStyle"];
                    lblAviso.IsVisible = true;
                }
                else
                {
                    entryNic.Text = medidor.NIC;
                    entryMatricula.Text = medidor.MATRICULA;
                    entryMedidor.Text = medidor.NUM_MEDIDOR;
                    entryMultiplo.Text = medidor.MULTIPLO.ToString();
                    entryMarca.Text = medidor.MARCA;

                    entrySector.Text = medidor.SECTOR;
                    pkrCircuito.SelectedIndex = App.circuitos.IndexOf(App.circuitos.FirstOrDefault(cir => cir.CIRCUITO == medidor.CIRCUITO));
                    entryLocalidad.Text = medidor.LOCALIDAD;
                    entryMunicipio.Text = medidor.MUNICIPIO;

                    entryEstado.Text = medidor.ESTADO_SUMINISTRO;
                    entryNaturaleza.Text = medidor.TECNOLOGIA;
                    entryTipoTec.Text = medidor.TIPO_TECNOLOGIA;
                    entryTipoCon.Text = medidor.TIPO_CONEXION;
                    lblAviso.IsVisible = false;
                    swBidireccional.On = medidor.BIDIRECCIONAL.HasValue && medidor.BIDIRECCIONAL.Value;
                    if (_totalizador.ID != medidor.ID_TOTALIZADOR)
                    {
                        TOTALIZADOR totalizador2 = await App.TotalizadoresManager.ObtenerAsync(Convert.ToString(medidor.ID_TOTALIZADOR));
                        lblAviso.Text = "ESTE NIS ESTÁ ASOCIADO AL TOTALIZADOR CON EL NIS " + totalizador2.NIS;
                        lblAviso.Style = (Style)Application.Current.Resources["ValidationEntryWarningStyle"];
                        otroTotalizador = true;
                    }
                    else
                    {
                        lblAviso.Text = "";
                        lblAviso.Style = null;
                        mismoTotalizador = true;
                    }
                    lblAviso.IsVisible = true;
                    btnMedidor.IsEnabled = true;
                    btnInstalar.IsEnabled = true;
                    x = medidor.X;
                    y = medidor.Y;
                    ll = medidor.LATITUD;
                    lo = medidor.LONGITUD;
                }
                IsLoading.IsRunning = false;
            }
        }

        private void ResetearCampos()
        {
            lblAviso.Text = "";
            lblAviso.Style = null;
            entryNic.Text = "";
            entryMatricula.Text = "";
            entryMedidor.Text = "";
            entryMultiplo.Text = "";
            entryMarca.Text = "";

            entrySector.Text = "";
            pkrCircuito.SelectedItem = null;
            entryLocalidad.Text = "";
            entryMunicipio.Text = "";

            entryEstado.Text = "";
            entryTipoTec.Text = "";
            entryTipoCon.Text = "";
            entryNaturaleza.Text = "";
            swBidireccional.On = false;
            btnInstalar.IsEnabled = false;
        }

        private async void BtnTomarFoto_Clicked(object sender, EventArgs e)
        {
            ImageProcess imgtemp = new ImageProcess(); // creates imgttemp object of ImageProcess Class.
            Stream file = await imgtemp.GetImage(); // Gets image from Camera to imgtemp

            if (file != null) //if there is something in imgtemp
            {
                if (file != null) // checks whether the image source is empty!
                {
                    //Imagen1.Source = imgtemp.img; //Set Image in front end as taken image.
                    IsLoading.IsRunning = true;
                    string temp = await imgtemp.ProcessImage(file, _totalizador); // passes the image in byte[] format to be processed, returns json formatted data of possible outcomes
                    if (temp == null)
                    {
                        return;
                    }
                    IsLoading.IsRunning = false;
                    await DisplayAlert("", "Imagen enviada", "OK");

                }
                else
                {
                    await DisplayAlert("Error", imgtemp.error, "Ok");
                    //btnCargarFoto.IsEnabled = true;
                }
            }
        }

        async private void BtnInstalar_Clicked(object sender, EventArgs e)
        {
            List<string> Errores = new List<string>();
            if (pkrCircuito.SelectedIndex == -1)
            {
                await DisplayAlert("", "El campo de circuito no puede estar vacío", "Ok");
                return;
            }

            if (entryNic.Text == "" || entryMatricula.Text == "" || entryMedidor.Text == "" || entryMarca.Text == "" || entryMunicipio.Text == "" || entryMultiplo.Text == "" ||
            x == "" || y == "" || ll == "" || lo == "" || String.IsNullOrEmpty(entryMedidor.Text) || String.IsNullOrEmpty(entryMarca.Text) || String.IsNullOrEmpty(entryMultiplo.Text) ||
            String.IsNullOrEmpty(entryNic.Text) || String.IsNullOrEmpty(entryMatricula.Text) || String.IsNullOrEmpty(x) || String.IsNullOrEmpty(y) || String.IsNullOrEmpty(ll) || String.IsNullOrEmpty(lo))
                Errores.Add("-EL CLIENTE DEBE CONTENER LOS CAMPOS DE INFORMACIÓN BÁSICA Y DE UBICACIÓN PARA PODER ASOCIARSE A ESTE TOTALIZADOR.");

            if (_totalizador.MATRICULA != entryMatricula.Text)
            {
                Errores.Add("-EL CLIENTE DEBE TENER LA MISMA MATRÍCULA DEL TOTALIZADOR.");
                //DependencyService.Get<IAndroidMethods>().LongAlert(Errores[0]);
            }

            if (_totalizador.CIRCUITO != pkrCircuito.Items[pkrCircuito.SelectedIndex])
                Errores.Add("-EL CLIENTE DEBE PERTENECER AL MISMO CIRCUITO DEL TOTALIZADOR.");

            if (_totalizador.MUNICIPIO != entryMunicipio.Text)
                Errores.Add("-EL CLIENTE DEBE PERTENECER AL MISMO MUNICIPIO DEL TOTALIZADOR.");

            if (DeterminarTieneColector(entryMedidor.Text) == true && DeterminarTieneColector(_totalizador.NUM_MEDIDOR))
            {
                string colTot = (await App.ClientesManager.DeterminarColector(_totalizador.NIS)).Content.ReadAsStringAsync().Result;
                string colCl = (await App.ClientesManager.DeterminarColector(txtNis.Text)).Content.ReadAsStringAsync().Result;

                if (colCl != "" && colTot != "")
                {
                    if (colCl != colTot)
                        Errores.Add("-EL CLIENTE DEBE TENER EL MISMO NÚMERO DE COLECTOR DEL TOTALIZADOR.");
                }
            }
            int xT = Convert.ToInt32(_totalizador.X), yT = Convert.ToInt32(_totalizador.Y), xC = Convert.ToInt32(x), yC = Convert.ToInt32(y);

            if (xC == 0 || yC == 0)
                Errores.Add("-SE DESCONOCE LA LOCALIZACIÓN DEL CLIENTE");
            //if (DeterminarRangoXY(xT, yT, xC, yC) == false)
            //Errores.Add("-EL CLIENTE DEBE ESTÁR A 500 METROS O MENOS DEL TOTALIZADOR");
            string mensaje = "";
            bool errores = false;
            if (Errores.Count > 0)
            {
                errores = true;
                for (int k = 0; k < Errores.Count; k++)
                {
                    mensaje += Errores[k].ToString() + "\n";
                }
            }
            if (errores)
            {
                await DisplayAlert("Cliente no asociado", mensaje, "OK");
            }
            else if (entryMedidor.Text != "0" && (entryMedidor.Text.Length < 6 || entryMedidor.Text.Length > 8))
            {
                await DisplayAlert("Aviso", "El número de medidor debe contener entre 6 y 8 dígitos", "Ok");
            }
            else
            {
                bool instalar500 = true;
                if (DeterminarRangoXY(xT, yT, xC, yC) == false)
                    instalar500 = await DisplayAlert("Aviso", "El cliente supera los 500 metros", "Aceptar", "Cancelar");
                if (instalar500)
                {
                    if (entryMedidor.Text != "0" && entryTipoTec.Text != "SMCA")
                    {
                        lblLectura.IsVisible = true;
                        txtLectura.IsVisible = true;
                        lblLectura.Text = "Lectura: ";
                    }
                    else if (entryMedidor.Text == "0")
                    {
                        txtLectura.IsVisible = false;
                        lblLectura.IsVisible = true;
                        lblLectura.Text = "Conexión directa";
                    }
                    else if (entryTipoTec.Text == "SMCA")
                    {
                        txtLectura.IsVisible = false;
                        lblLectura.IsVisible = true;
                        lblLectura.Text = "Cliente de gabinete";
                    }
                    lblMedidor.IsVisible = false;
                    txtMedidor.IsVisible = false;
                    lblContrato.IsVisible = false;
                    txtContrato.IsVisible = false;
                    overlay.IsVisible = true;
                }

            }
        }
        async private void InstalarCliente()
        {
            TipoCliente tipo = TipoCliente.NoTotalizadoDesc;
            CLIENTE nuevoCliente = null;
            if (desconocido)
            {
                tipo = TipoCliente.NoTotalizadoDesc;
                nuevoCliente = new CLIENTE
                {
                    BIDIRECCIONAL = no_totalizado.BIDIRECCIONAL,
                    CIRCUITO = pkrCircuito.Items[pkrCircuito.SelectedIndex],
                    ESTADO_SUMINISTRO = no_totalizado.ESTADO_SUMINISTRO,
                    FECHA_CARGA = DateTime.Now,
                    ID_TOTALIZADOR = _totalizador.ID,
                    INCONSISTENCIA = no_totalizado.INCONSISTENCIA,
                    INCONSISTENCIA_OPEN = no_totalizado.INCONSISTENCIA_OPEN,
                    LATITUD = no_totalizado.LATITUD,
                    LOCALIDAD = no_totalizado.LOCALIDAD,
                    LONGITUD = no_totalizado.LONGITUD,
                    MARCA = no_totalizado.MARCA,
                    MATRICULA = entryMatricula.Text,
                    MULTIPLO = no_totalizado.MULTIPLO,
                    MUNICIPIO = no_totalizado.MUNICIPIO,
                    NIC = no_totalizado.NIC,
                    NIS = Convert.ToString(no_totalizado.NIS),
                    NUM_MEDIDOR = entryMedidor.Text,
                    SECTOR = no_totalizado.SECTOR,
                    TECNOLOGIA = no_totalizado.TECNOLOGIA,
                    TIPO_CONEXION = no_totalizado.TIPO_CONEXION,
                    TIPO_TECNOLOGIA = no_totalizado.TIPO_TECNOLOGIA,
                    X = no_totalizado.X,
                    Y = no_totalizado.Y,
                    MODIFICADO = no_totalizado.MODIFICADO,
                    MODIFICADO_OPEN = no_totalizado.MODIFICADO_OPEN
                };
            }
            else if (otroTotalizador)
            {
                medidor.NUM_MEDIDOR = entryMedidor.Text;
                medidor.ID_TOTALIZADOR = _totalizador.ID;
                medidor.MATRICULA = entryMatricula.Text;
                medidor.CIRCUITO = pkrCircuito.Items[pkrCircuito.SelectedIndex];
                nuevoCliente = medidor;
                tipo = TipoCliente.OtroTotalizador;
            }
            else if (mismoTotalizador)
            {
                medidor.NUM_MEDIDOR = entryMedidor.Text;
                medidor.ID_TOTALIZADOR = _totalizador.ID;
                medidor.MATRICULA = entryMatricula.Text;
                medidor.CIRCUITO = pkrCircuito.Items[pkrCircuito.SelectedIndex];
                nuevoCliente = medidor;
                tipo = TipoCliente.YaInstalado;
            }
            else
            {
                maestro.NUM_MEDIDOR = entryMedidor.Text;
                maestro.MATRICULA = entryMatricula.Text;
                maestro.ID_TOTALIZADOR = _totalizador.ID;
                maestro.CIRCUITO = pkrCircuito.Items[pkrCircuito.SelectedIndex];
                nuevoCliente = maestro;
                tipo = TipoCliente.SGC;
            }
            Nuevo_Cliente nuevo_Cliente = null;
            if (!string.IsNullOrEmpty(txtLectura.Text))
            {
                nuevo_Cliente = new Nuevo_Cliente
                {
                    cliente = nuevoCliente,
                    ID_BALANCE_TOTALIZADOR = _balanceTotalizador.ID,
                    tipoCliente = tipo,
                    lectura = Convert.ToDecimal(txtLectura.Text),
                    idVisita = _visita.ID
                };
            }
            else
            {
                nuevo_Cliente = new Nuevo_Cliente
                {
                    cliente = nuevoCliente,
                    ID_BALANCE_TOTALIZADOR = _balanceTotalizador.ID,
                    tipoCliente = tipo,
                    idVisita = _visita.ID
                };
            }
            IsLoading.IsRunning = true;
            HttpStatusCode status = (await App.Nuevo_ClientesManager.SaveTaskAsync(nuevo_Cliente, true)).StatusCode;
            IsLoading.IsRunning = false;
            if (status == HttpStatusCode.BadRequest)
            {
                await DisplayAlert("Error", "No se realizó la instalación, vuelva a intentarlo", "OK");
            }
            else if (status == HttpStatusCode.Conflict)
            {
                await DisplayAlert("Error", "Hubo conflictos con la instalación del medidor", "OK");
            }
            else if (status == HttpStatusCode.InternalServerError)
            {
                await DisplayAlert("Error", "Hubo un error en la instalación del medidor", "OK");
            }
            else
            {
                await DisplayAlert("", "Medidor instalado exitosamente", "OK");
                Navigation.RemovePage(this);
                Navigation.RemovePage(Navigation.NavigationStack[Navigation.NavigationStack.Count - 1]);
                await Navigation.PushAsync(new TrabajarVisita(_visita.ID, 1));
            }
        }

        public bool DeterminarTrifasico(string Medidor)
        {
            try
            {
                var T = Medidor.ToCharArray();

                if (T[0].ToString() + T[1].ToString() == "68")
                    return true;

                if (T[0].ToString() + T[1].ToString() == "48")
                    return true;

                if (T[0].ToString() + T[1].ToString() == "69")
                    return true;

                if (T[0].ToString() + T[1].ToString() == "19")
                    return true;

                if (T[0].ToString() + T[1].ToString() + T[2].ToString() == "060")
                    return true;

                return false;
            }
            catch
            {
                return false;
            }
        }
        void OnCancelButtonClicked(object sender, EventArgs args)
        {
            overlay.IsVisible = false;
            overlay2.IsVisible = false;
        }
        private async void OnOKButtonClicked(object sender, EventArgs args)
        {
            if (!string.IsNullOrEmpty(txtLectura.Text) && txtLectura.IsVisible && entryMedidor.Text != "0")
            {
                if (Decimal.TryParse(txtLectura.Text, out Decimal n))
                {
                    InstalarCliente();
                    overlay.IsVisible = false;
                    ResetearCampos();
                }
                else
                {
                    await DisplayAlert("Error", "Introduzca un valor numérico en la lecura", "OK");
                    return;
                }
            }
            else if (string.IsNullOrEmpty(txtLectura.Text) && txtLectura.IsVisible && entryMedidor.Text != "0")
            {
                await DisplayAlert("Error", "El campo de lectura debe tener algún valor", "OK");
                return;
            }
            else if (string.IsNullOrEmpty(txtLectura.Text) && !txtLectura.IsVisible && (entryMedidor.Text == "0" || entryTipoTec.Text == "SMCA"))
            {
                lblLectura.WidthRequest = 100;
                InstalarCliente();
                overlay.IsVisible = false;
                ResetearCampos();
            }
            else if (!string.IsNullOrEmpty(txtMedidor.Text) && txtMedidor.IsVisible)
            {
                if (txtMedidor.Text.Length < 6 || txtMedidor.Text.Length > 8)
                {
                    await DisplayAlert("Aviso", "El número de medidor debe contener entre 6 y 8 dígitos", "Ok");
                    return;
                }
                List<SGC_REPLICA> SGC = await App.SGCManager.ObtenerListaAsync(txtMedidor.Text);
                if (SGC.Count < 1)
                {
                    await DisplayAlert("Aviso", "Medidor no encontrado", "Ok");
                    return;
                }
                ClientL.ItemsSource = SGC;
                overlay.IsVisible = false;
                overlay2.IsVisible = true;
            }
            else if (!string.IsNullOrEmpty(txtContrato.Text) && txtContrato.IsVisible)
            {
                if (txtContrato.Text.Length != 7)
                {
                    await DisplayAlert("Aviso", "El número de contrato debe tener 7 dígitos", "Ok");
                    return;
                }
                IsLoading.IsRunning = true;
                SGC_REPLICA SGC = await App.SGCManager.ObtenerAsync(txtContrato.Text);
                IsLoading.IsRunning = false;
                if (SGC != null)
                {
                    txtNis.Text = Convert.ToString(SGC.NIS_RAD);
                    overlay.IsVisible = false;
                    txtContrato.Text = "";
                    Button_Clicked(null, null);
                }
                else
                    await DisplayAlert("Aviso", "Medidor no encontrado", "Ok");
            }

        }
        public bool DeterminarTieneColector(string Medidor)
        {
            if (Medidor.Length > 8)
            {

                var T = Medidor.ToCharArray();

                if (T[0].ToString() + T[1].ToString() + T[2].ToString() + T[3].ToString() == "2700")
                    return true;

                if (T[0].ToString() + T[1].ToString() + T[2].ToString() + T[3].ToString() == "2600")
                    return true;
            }

            return false;
        }
        public bool DeterminarRangoXY(int xT, int yT, int xC, int yC)
        {
            if (xC > (xT + 500) || xC < (xT - 500))
                return false;

            if (yC > (yT + 500) || yC < (yT - 500))
                return false;

            return true;
        }
        private void BtnBuscar_Medidor(object sender, EventArgs e)
        {
            ResetearCampos();
            lblLectura.IsVisible = false;
            txtLectura.IsVisible = false;
            lblMedidor.IsVisible = true;
            txtMedidor.IsVisible = true;
            lblContrato.IsVisible = false;
            txtContrato.IsVisible = false;
            overlay.IsVisible = true;
        }
        private void BtnBuscar_Contrato(object sender, EventArgs e)
        {
            ResetearCampos();
            lblLectura.IsVisible = false;
            txtLectura.IsVisible = false;
            lblMedidor.IsVisible = false;
            txtMedidor.IsVisible = false;
            lblContrato.IsVisible = true;
            txtContrato.IsVisible = true;
            overlay.IsVisible = true;
        }
        private void OnSelection(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem == null)
            {
                return;
            }
            var item = (SGC_REPLICA)e.SelectedItem;
            overlay2.IsVisible = false;
            txtNis.Text = Convert.ToString(item.NIS_RAD);
            Button_Clicked(null, null);
        }
    }
}