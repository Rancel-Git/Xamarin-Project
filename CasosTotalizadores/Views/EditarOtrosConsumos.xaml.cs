using CasosTotalizadores.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace CasosTotalizadores.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class EditarOtrosConsumos : ContentPage
    {
        private ALUMBRADO_PUBLICO _otros;
        private VISITAS _visita;
        public EditarOtrosConsumos(ALUMBRADO_PUBLICO otrosM, VISITAS visita)
        {
            _visita = visita;
            _otros = otrosM;
            InitializeComponent();
            pkrTipoAlum.ItemsSource = App.tiposConsumos;
            pkrEstadoAlum.ItemsSource = App.estadosConsumos;
            pkrPotencia.ItemsSource = App.potencias;

            pkrTipoAlum.SelectedIndex = App.tiposConsumos.IndexOf(App.tiposConsumos.FirstOrDefault(tip => tip.TIPO_ALUMBRADO == _otros.DESCRIPCION));
            pkrEstadoAlum.SelectedIndex = App.estadosConsumos.IndexOf(App.estadosConsumos.FirstOrDefault(es => es.ESTADO_FUNCIONAL == _otros.ESTADO));
            pkrPotencia.SelectedIndex = App.potencias.IndexOf(App.potencias.FirstOrDefault(po => po.POTENCIA == Convert.ToString(_otros.POTENCIA)));
            entCantidad.Text = Convert.ToString(_otros.CANTIDAD);
            swiMedida.IsToggled = _otros.POTENCIA_MEDIDA.HasValue && _otros.POTENCIA_MEDIDA.Value;
            TrabajarVisita.pestana = 0;
        }
        private async void Actualizar_OtroConsumo(object sender, EventArgs e)
        {
            if (pkrEstadoAlum.SelectedItem is null || pkrPotencia.SelectedItem is null || pkrTipoAlum.SelectedItem is null)
            {
                await DisplayAlert("Aviso", "Debe seleccionar todas las opciones", "OK");
                return;
            }
            if (string.IsNullOrEmpty(entCantidad.Text))
            {
                await DisplayAlert("Aviso", "Debe especificar una cantidad", "OK");
                return;
            }
            int cambios = 0;
            if (_otros.POTENCIA != Convert.ToInt32(pkrPotencia.Items[pkrPotencia.SelectedIndex]))
            {
                _otros.POTENCIA = Convert.ToInt32(pkrPotencia.Items[pkrPotencia.SelectedIndex]);
                cambios++;
            }
            if (_otros.ESTADO != pkrEstadoAlum.Items[pkrEstadoAlum.SelectedIndex])
            {
                _otros.ESTADO = pkrEstadoAlum.Items[pkrEstadoAlum.SelectedIndex];
                cambios++;
            }
            if (_otros.DESCRIPCION != pkrTipoAlum.Items[pkrTipoAlum.SelectedIndex])
            {
                _otros.DESCRIPCION = pkrTipoAlum.Items[pkrTipoAlum.SelectedIndex];
                cambios++;
            }
            if (_otros.CANTIDAD != Convert.ToInt32(entCantidad.Text))
            {
                _otros.CANTIDAD = Convert.ToInt32(entCantidad.Text);
                cambios++;
            }
            if (_otros.POTENCIA_MEDIDA != swiMedida.IsToggled)
            {
                _otros.POTENCIA_MEDIDA = swiMedida.IsToggled;
                cambios++;
            }
            if (cambios > 0)
            {
                IsLoading.IsRunning = true;
                if (HttpStatusCode.OK == (await App.AlumbradosManager.SaveTaskAsync(_otros)).StatusCode)
                {
                    TrabajarVisita.consumos.First(c => c.ID == _otros.ID).CANTIDAD = _otros.CANTIDAD;
                    TrabajarVisita.consumos.First(c => c.ID == _otros.ID).DESCRIPCION = _otros.DESCRIPCION;
                    TrabajarVisita.consumos.First(c => c.ID == _otros.ID).ESTADO = _otros.ESTADO;
                    TrabajarVisita.consumos.First(c => c.ID == _otros.ID).POTENCIA = _otros.POTENCIA;
                    TrabajarVisita.consumos.First(c => c.ID == _otros.ID).POTENCIA_MEDIDA = _otros.POTENCIA_MEDIDA;
                    TrabajarVisita.pestana = 2;
                    await DisplayAlert("", "Otro consumo actualizado", "OK");
                    Navigation.RemovePage(this);

                }
                else
                    await DisplayAlert("Error", "Otro consumo no actualizado", "OK");
                IsLoading.IsRunning = false;
            }
            else
            {
                await DisplayAlert("", "No se realizaron cambios", "OK");
            }
            
        }
        private async void Eliminar_OtroConsumo(object sender, EventArgs e)
        {
            bool cerrar = await DisplayAlert("AVISO", "¿ESTA SEGURO QUE DESEA ELIMINAR EL OTRO CONSUMO?", "Aceptar", "Cancelar");
            if (cerrar)
            {
                await App.AlumbradosManager.DeleteTaskAsync(Convert.ToString(_otros.ID));
                TrabajarVisita.pestana = 2;
                await DisplayAlert("", "Otro consumo eliminado", "OK");
                TrabajarVisita.consumos.Remove(_otros);
                Navigation.RemovePage(this);
            }
            //Navigation.RemovePage(Navigation.NavigationStack[Navigation.NavigationStack.Count - 1]);
            //await Navigation.PushAsync(new TrabajarVisita(_visita.ID, 2));

        }
    }
}