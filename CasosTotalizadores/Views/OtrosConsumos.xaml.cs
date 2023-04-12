using CasosTotalizadores.Entidades;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace CasosTotalizadores.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class OtrosConsumos : ContentPage
	{
        private TOTALIZADOR _totalizador;
        public OtrosConsumos(TOTALIZADOR totalizador)
        {
            _totalizador = totalizador;
            InitializeComponent();
            pkrTipoAlum.ItemsSource = App.tiposConsumos;
            pkrEstadoAlum.ItemsSource = App.estadosConsumos;
            pkrPotencia.ItemsSource = App.potencias;
            TrabajarVisita.pestana = 0;
        }
        async private void onAgregarConsumo(object sender, EventArgs e)
        {
            if(pkrEstadoAlum.SelectedItem is null || pkrPotencia .SelectedItem is null || pkrTipoAlum.SelectedItem is null)
            {
                await DisplayAlert("Aviso", "Debe seleccionar todas las opciones", "OK");
                return;
            }
            if (string.IsNullOrEmpty(entCantidad.Text))
            {
                await DisplayAlert("Aviso", "Debe especificar una cantidad", "OK");
                return;
            }
            ALUMBRADO_PUBLICO otroConsumo = new ALUMBRADO_PUBLICO();
            otroConsumo.POTENCIA = Convert.ToInt32(((POTENCIAS_ASOCIACION)pkrPotencia.SelectedItem).POTENCIA);
            otroConsumo.ESTADO = ((ESTADOS_FUNCIONALES_ASOCIACION)pkrEstadoAlum.SelectedItem).ESTADO_FUNCIONAL;
            otroConsumo.DESCRIPCION = ((TIPOS_ALUMBRADOS_PUBLICOS_ASOCIACION)pkrTipoAlum.SelectedItem).TIPO_ALUMBRADO;
            otroConsumo.CANTIDAD = Convert.ToInt32(entCantidad.Text);
            otroConsumo.ID_TOTALIZADOR = _totalizador.ID;
            //otroConsumo.FECHA_CARGA = DateTime.Now;
            otroConsumo.POTENCIA_MEDIDA = swiMedida.IsToggled;
            IsLoading.IsRunning = true;
            long id = Convert.ToInt64((await App.AlumbradosManager.SaveTaskAsync(otroConsumo, true)).Content.ReadAsStringAsync().Result);
            if (id > 0)
            {
                otroConsumo.ID = id;
                otroConsumo.FECHA_CARGA = DateTime.Now;
                TrabajarVisita.consumos.Add(otroConsumo);
                TrabajarVisita.pestana = 2;
                IsLoading.IsRunning = false;
                await DisplayAlert("", "Otro consumo agregado satisfactoriamente", "OK");
                pkrEstadoAlum.SelectedItem = null;
                pkrPotencia.SelectedItem = null;
                pkrTipoAlum.SelectedItem = null;
                entCantidad.Text = "";
                swiMedida.IsToggled = false;
            }
            else
                await DisplayAlert("ERROR", "Otro consumo no agregado", "OK");
        }
    }
}