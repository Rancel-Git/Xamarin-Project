using CasosTotalizadores.Entidades;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Linq;
using CasosTotalizadores.Entidades.Personalizadas;
using System.IO;
using System.Net;

namespace CasosTotalizadores.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class TrabajarCliente : ContentPage
    {
        private DETALLE_BALANCE_CLIENTES_R _detalleCliente;
        private VISITAS _visita;
        private bool lecturaAceptada = true;
        public TrabajarCliente(DETALLE_BALANCE_CLIENTES_R detalleCliente, VISITAS visita)
        {
            _visita = visita;
            _detalleCliente = detalleCliente;
            InitializeComponent();
            pkrAccion.IsEnabled = false;
            entLectura1.Text = Convert.ToString(detalleCliente.LECTURA_ANTERIOR);
            entLectura2.Text = Convert.ToString(detalleCliente.LECTURA_ACTUAL);
            entNIS.Text = Convert.ToString(detalleCliente.NIS);
            entPosFraude.Text = detalleCliente.CRITERIO;
            pkrSituacion.SelectedIndexChanged += SituacionSeleccionada;
            pkrAccion.SelectedIndexChanged += AccionSeleccionada;
            pkrSituacion.ItemsSource = App.situaciones.FindAll(s => s.ID_TIPO_MEDIDOR == 5 || s.ID_TIPO_MEDIDOR == 2);
            _detalleCliente.BIDIRECCIONAL = _detalleCliente.BIDIRECCIONAL ?? false;
            if ((_visita.CASOS.BALANCE_TOTALIZADOR.TOTALIZADOR.CRITERIO != "MIXTO" && _visita.CASOS.BALANCE_TOTALIZADOR.TOTALIZADOR.CRITERIO != "NO TELEMEDIDO" && !_detalleCliente.BIDIRECCIONAL.Value) || _detalleCliente.TIPO_TECNOLOGIA == "SMCA" || detalleCliente.NUM_MEDIDOR == "0")
            {
                entLectura.IsEnabled = false;
            }
            else if (_detalleCliente.BIDIRECCIONAL.Value)
            {
                gridLectEnviada.IsVisible = true;
                lblLectura.Text = "Lectura recibida:";
                entLectura.Placeholder = "Lectura recibida";
            }
            if (visita.MOTIVOS_VISITA.ID == 2)
            {
                pkrSituacion.IsEnabled = false;
                pkrAccion.IsEnabled = false;
            }
            TrabajarVisita.pestana = 0;
        }
        async private void RealizarAccion(object sender, EventArgs e)
        {
            ACCIONES_CLIENTES acciones_cliente = new ACCIONES_CLIENTES();
            LECTURAS_VISITAS_CLIENTES lecturas_Visitas_Clientes;
            SITUACIONES_CLIENTES situaciones_Clientes = new SITUACIONES_CLIENTES();
            Situacion_Accion_Lectura situacion_Accion_Lectura = new Situacion_Accion_Lectura();

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
            else if (_visita.MOTIVOS_VISITA.MOTIVO != "Segunda toma de lectura")
            {
                //situaciones_Clientes.DETALLE_BALANCE_CLIENTES_R = _detalleCliente;
                situaciones_Clientes.ID_DETALLE_BALANCE_CLIENTES_R = _detalleCliente.ID;
                //situaciones_Clientes.DETALLE_SITUACION = App.detalle_Situaciones.Find(ds => ds.ACCIONES_EJECUTADAS.ID == ((ACCIONES_EJECUTADAS)pkrAccion.SelectedItem).ID && (ds.ID_SITUACION == ((SITUACIONES_ENCONTRADAS)pkrSituacion.SelectedItem).ID));
                if (!(_detalleCliente.ID_DETALLE_BALANCE_CLIENTE is null))
                    situaciones_Clientes.ID_DETALLE_BALANCE_CLIENTES = (long)_detalleCliente.ID_DETALLE_BALANCE_CLIENTE;
                situaciones_Clientes.ID_SITUACION = App.detalle_Situaciones.Find(ds => ds.ID_ACCION == ((ACCIONES_EJECUTADAS)pkrAccion.SelectedItem).ID && (ds.ID_SITUACION == ((SITUACIONES_ENCONTRADAS)pkrSituacion.SelectedItem).ID)).ID;
                situaciones_Clientes.ID_VISITA = _visita.ID;
                //situaciones_Clientes.VISITAS = _visita;
                acciones_cliente.ID_ACCION = ((ACCIONES_EJECUTADAS)pkrAccion.SelectedItem).ID;
                acciones_cliente.ID_VISITA = _visita.ID;
                acciones_cliente.ID_DETALLE_BALANCE_CLIENTES_R = _detalleCliente.ID;
                if (!(_detalleCliente.ID_DETALLE_BALANCE_CLIENTE is null))
                    acciones_cliente.ID_DETALLE_BALANCE_CLIENTES = (long)_detalleCliente.ID_DETALLE_BALANCE_CLIENTE;
                acciones_cliente.FECHA_CARGA = DateTime.Now;
                //acciones_cliente.ACCIONES_EJECUTADAS = ((ACCIONES_EJECUTADAS)pkrAccion.SelectedItem);
                acciones_cliente.DETALLE_BALANCE_CLIENTES_R = _detalleCliente;
                //acciones_cliente.VISITAS = _visita;
                situacion_Accion_Lectura.acciones_cliente = acciones_cliente;
                situacion_Accion_Lectura.situaciones_Clientes = situaciones_Clientes;
            }
            if (entLectura.IsEnabled)
            {
                if (!string.IsNullOrEmpty(entLectura.Text))
                {
                    if (Decimal.TryParse(entLectura.Text, out Decimal n))
                    {
                        if (_visita.MOTIVOS_VISITA.MOTIVO == "Segunda toma de lectura")
                        {
                            if (_detalleCliente.PRIMERA_LECTURA > Convert.ToDecimal(entLectura.Text))
                            {
                                lecturaAceptada = await DisplayAlert("Aviso", "La lectura introducida es menor a la registrada en la visita anterior", "Aceptar", "Cancelar");
                            }
                        }
                        lecturas_Visitas_Clientes = new LECTURAS_VISITAS_CLIENTES();
                        //lecturas_Visitas_Clientes.DETALLE_BALANCE_CLIENTES_R = _detalleCliente;
                        lecturas_Visitas_Clientes.ID_DETALLE_BALANCE_CLIENTES_R = _detalleCliente.ID;
                        if (!(_detalleCliente.ID_DETALLE_BALANCE_CLIENTE is null))
                            lecturas_Visitas_Clientes.ID_DETALLE_BALANCE_CLIENTES = (long)_detalleCliente.ID_DETALLE_BALANCE_CLIENTE;
                        if (_visita.MOTIVOS_VISITA.MOTIVO == "Primera visita")
                        {
                            lecturas_Visitas_Clientes.ID_VISITA_1 = _visita.ID;
                            //lecturas_Visitas_Clientes.VISITAS = _visita;
                            //lecturas_Visitas_Clientes.LECTURA1 = nuevaLectura.ID;
                            lecturas_Visitas_Clientes.LECTURA_1 = Convert.ToDecimal(entLectura.Text);
                            lecturas_Visitas_Clientes.FECHA_LECTURA_1 = DateTime.Now;
                        }
                        else
                        {
                            lecturas_Visitas_Clientes.ID_VISITA_2 = _visita.ID;
                            //lecturas_Visitas_Clientes.VISITAS1 = _visita;
                            //lecturas_Visitas_Clientes.LECTURA2 = nuevaLectura.ID;
                            lecturas_Visitas_Clientes.LECTURA_2 = Convert.ToDecimal(entLectura.Text);
                            lecturas_Visitas_Clientes.FECHA_LECTURA_2 = DateTime.Now;
                        }
                        situacion_Accion_Lectura.lecturas_Visitas_Clientes = lecturas_Visitas_Clientes;
                    }
                    else
                    {
                        await DisplayAlert("Error", "Introduzca un valor numérico en la " + lblLectura.Text.ToLower().TrimEnd(':'), "OK");
                        return;
                    }
                }
                else
                {
                    await DisplayAlert("Error", "El campo de " + lblLectura.Text.ToLower().TrimEnd(':') + " debe tener algún valor", "OK");
                    return;
                }
                if (_detalleCliente.BIDIRECCIONAL.Value)
                {
                    if (!string.IsNullOrEmpty(entLecturaEnviada.Text))
                    {
                        if (Decimal.TryParse(entLecturaEnviada.Text, out Decimal n))
                        {
                            if (_visita.MOTIVOS_VISITA.MOTIVO == "Segunda toma de lectura")
                            {
                                if (_detalleCliente.PRIMERA_LECTURA_DEL > Convert.ToDecimal(entLecturaEnviada.Text))
                                {
                                    //await DisplayAlert("Error", "El valor de la " + lblLecturaEnviada.Text.ToLower().TrimEnd(':') + " actual debe ser mayor, o igual, a la anterior", "OK");
                                    lecturaAceptada = await DisplayAlert("Aviso", "La lectura introducida es menor a la registrada en la visita anterior", "Aceptar", "Cancelar");
                                    if (!lecturaAceptada)
                                        return;
                                }
                            }
                            situacion_Accion_Lectura.lecturaEnviada = Convert.ToDecimal(entLecturaEnviada.Text);
                        }
                        else
                        {
                            await DisplayAlert("Error", "Introduzca un valor numérico en la " + lblLecturaEnviada.Text.ToLower().TrimEnd(':'), "OK");
                            return;
                        }
                    }
                    else
                    {
                        await DisplayAlert("Error", "El campo de " + lblLecturaEnviada.Text.ToLower().TrimEnd(':') + " debe tener algún valor", "OK");
                        return;
                    }
                }
            }

            if (lecturaAceptada)
            {
                IsLoading.IsRunning = true;
                HttpStatusCode status = (await App.Acciones_ClientesManager.SaveTaskAsync(situacion_Accion_Lectura, true)).StatusCode;
                IsLoading.IsRunning = false;
                if (status == HttpStatusCode.OK)
                {
                    await DisplayAlert("", "Acción ejecutada", "OK");
                    TrabajarVisita.DetalleClientes.First(d => d.ID == _detalleCliente.ID).NUM_MEDIDOR = _detalleCliente.NUM_MEDIDOR;
                    TrabajarVisita.DetalleClientes.First(d => d.ID == _detalleCliente.ID).MULTIPLO = _detalleCliente.MULTIPLO;
                    TrabajarVisita.DetalleClientes.First(d => d.ID == _detalleCliente.ID).FECHA_MODIFICACION = DateTime.Now;
                    TrabajarVisita.DetalleClientes.First(d => d.ID == _detalleCliente.ID).FALTA_MATERIAL = _detalleCliente.FALTA_MATERIAL;
                    if (_visita.MOTIVOS_VISITA.MOTIVO != "Segunda toma de lectura")
                    {
                        if (((ACCIONES_EJECUTADAS)pkrAccion.SelectedItem).ACCION.Equals("Desasociar cliente"))
                        {
                            _detalleCliente.ASOCIADO = false;
                            TrabajarVisita.DetalleClientes.Remove(_detalleCliente);
                        }
                    }
                    TrabajarVisita.pestana = 1;
                    Navigation.RemovePage(this);
                }
                else
                    await DisplayAlert("Error", "La acción no pudo ser ejecutada", "OK");

            }

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
                _detalleCliente.FALTA_MATERIAL = false;
                ACCIONES_EJECUTADAS accion = ((ACCIONES_EJECUTADAS)picker.ItemsSource[selectedIndex]);
                if (accion.ACCION.Equals("Cambio de medidor") || accion.ACCION.Equals("Instalación de medidor"))
                {
                    lblNumMedidor.IsVisible = true;
                    entMed.IsVisible = true;
                    lblMultiplo.IsVisible = false;
                    pkrMultiplo.IsVisible = false;
                    overlay.IsVisible = true;

                }
                else if (accion.ACCION.Equals("Corrección de múltiplo"))
                {
                    lblNumMedidor.IsVisible = false;
                    entMed.IsVisible = false;
                    lblMultiplo.IsVisible = true;
                    pkrMultiplo.IsVisible = true;
                    pkrMultiplo.ItemsSource = App.multiplos;
                    overlay.IsVisible = true;
                }
                if (accion.ACCION.Equals("Falta de material") || accion.ACCION.Equals("Desasociar cliente") || accion.ACCION.Equals("Corte de conexión directa") /*|| ((SITUACIONES_ENCONTRADAS)pkrSituacion.SelectedItem).SITUACION.Equals("Desmantelado")*/)
                {
                    entLectura.IsEnabled = false;
                    entLectura.Text = "";
                    entLecturaEnviada.IsEnabled = false;
                    entLecturaEnviada.Text = "";
                    if (accion.ACCION.Equals("Falta de material"))
                        _detalleCliente.FALTA_MATERIAL = true;
                }
                else
                {
                    entLectura.IsEnabled = true;
                    entLecturaEnviada.IsEnabled = true;
                }
                if ((_visita.CASOS.BALANCE_TOTALIZADOR.TOTALIZADOR.CRITERIO != "MIXTO" && _visita.CASOS.BALANCE_TOTALIZADOR.TOTALIZADOR.CRITERIO != "NO TELEMEDIDO" && !_detalleCliente.BIDIRECCIONAL.Value) || _detalleCliente.TIPO_TECNOLOGIA == "SMCA" || _detalleCliente.NUM_MEDIDOR == "0")
                {
                    entLectura.Text = "";
                    entLectura.IsEnabled = false;
                    entLecturaEnviada.Text = "";
                    entLecturaEnviada.IsEnabled = false;
                }
            }

        }
        void OnCancelButtonClicked(object sender, EventArgs args)
        {
            overlay.IsVisible = false;
        }
        async void OnOKButtonClicked(object sender, EventArgs args)
        {
            if (entMed.IsVisible)
            {
                if (entMed.Text.Length < 6 || entMed.Text.Length > 8)
                {
                    await DisplayAlert("Aviso", "El número de medidor debe contener entre 6 y 8 dígitos", "Ok");
                    return;
                }
                _detalleCliente.NUM_MEDIDOR = entMed.Text;
                entLectura.IsEnabled = true;
            }
            else
                _detalleCliente.MULTIPLO = Convert.ToInt32(((MULTIPLOS_ASOCIACION)pkrMultiplo.SelectedItem).MULTIPLO);
            overlay.IsVisible = false;
        }
    }
}