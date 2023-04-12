using CasosTotalizadores.Entidades;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Collections.Generic;
using System;
using Plugin.Connectivity;

namespace CasosTotalizadores.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class VisitaView : ContentPage
    {
        List<VISITAS> visitas;
        public VisitaView()
        {
            InitializeComponent();
            IsLoading.IsVisible = false;
            buscarVisita.IsVisible = true;
            buscarVisita.Text = "";            
        }
        protected async override void OnAppearing()
        {
            if (Settings.UserName.Length > 0)
            {
                IsLoading.IsVisible = true;
                IsLoading.IsRunning = true;
                do
                {
                    if (App.circuitos is null)
                        App.circuitos = await App.CircuitosManager.ObtenerListaAsync();
                } while (App.circuitos is null);
                do
                {
                    if (App.multiplos is null)
                        App.multiplos = await App.MultiplosManager.ObtenerListaAsync();
                } while (App.multiplos is null);
                do
                {
                    if (App.tiposConexiones is null)
                        App.tiposConexiones = await App.TiposConexionManager.ObtenerListaAsync();
                } while (App.tiposConexiones is null);
                do
                {
                    if (App.tiposConsumos is null)
                        App.tiposConsumos = await App.Tipos_ConsumosManager.ObtenerListaAsync();
                } while (App.tiposConsumos is null);
                do
                {
                    if (App.estadosConsumos is null)
                        App.estadosConsumos = await App.Estados_ConsumosManager.ObtenerListaAsync();
                } while (App.estadosConsumos is null);
                do
                {
                    if (App.potencias is null)
                        App.potencias = await App.PotenciasManager.ObtenerListaAsync();
                } while (App.potencias is null);
                do
                {
                    if (App.acciones is null)
                        App.acciones = await App.Acciones_ejecutadasManager.ObtenerListaAsync();
                } while (App.acciones is null);
                do
                {
                    if (App.situaciones is null)
                        App.situaciones = await App.SituacionManager.ObtenerListaAsync();
                } while (App.situaciones is null);
                do
                {
                    if (App.detalle_Situaciones is null)
                        App.detalle_Situaciones = await App.Detalle_SituacionManager.ObtenerListaAsync();
                } while (App.detalle_Situaciones is null);
                do
                {
                    if (App.tiposTecnologias is null)
                        App.tiposTecnologias = await App.TiposTecnologiasManager.ObtenerListaAsync();
                } while (App.tiposTecnologias is null);
                listaVisitas.IsVisible = false;
                string vis = (await App.VisitasManager.CantVisitas(Settings.UserName)).Content.ReadAsStringAsync().Result;
                Settings.CantVisitas = Convert.ToInt32(vis);
                if (Settings.CantVisitas == -1 || visitas == null)
                {
                    visitas = await App.VisitasManager.ObtenerListaAsync();
                }
                else if(visitas.Count != Settings.CantVisitas)
                    visitas = await App.VisitasManager.ObtenerListaAsync();

                IsLoading.IsRunning = false;
                IsLoading.IsVisible = false;
                listaVisitas.IsVisible = true;
                if (visitas.Count <= 0 || !Settings.Funciona)
                    lblNoVisita.IsVisible = true;
                else
                {
                    lblNoVisita.IsVisible = false;
                    listaVisitas.ItemsSource = null;
                    listaVisitas.ItemsSource = visitas;
                    listaVisitas.SelectedItem = null;
                    buscarVisita.TextChanged += OnTextChanged;
                    buscarVisita.SearchButtonPressed += OnSearchButtonPressed;
                }
            }
            //}
        }
        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            buscarVisita.TextChanged -= OnTextChanged;
            buscarVisita.SearchButtonPressed -= OnSearchButtonPressed;
        }
        private void OnTextChanged(object sender, EventArgs e)
        {
            OnBuscarMedidor(buscarVisita.Text);
        }
        private void OnSearchButtonPressed(object sender, EventArgs e)
        {
            OnBuscarMedidor(buscarVisita.Text);
        }
        private void OnSelection(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem == null)
            {
                return;
            }
            var item = (VISITAS)e.SelectedItem;
            Navigation.PushAsync(new InformacionVisita(ref item));
        }
        private void OnBuscarMedidor(string texto)
        {
            if (!(texto is null) && texto.Length > 0)
            {
                if (visitas.FindAll(vis => vis.CASOS.BALANCE_TOTALIZADOR.NUM_MEDIDOR.StartsWith(texto)).Count > 0)
                {
                    listaVisitas.ItemsSource = visitas.FindAll(vis => vis.CASOS.BALANCE_TOTALIZADOR.NUM_MEDIDOR.StartsWith(texto));
                }
                else if (visitas.FindAll(vis => vis.CASOS.BALANCE_TOTALIZADOR.MATRICULA.StartsWith(texto, StringComparison.CurrentCultureIgnoreCase)).Count > 0)
                {
                    listaVisitas.ItemsSource = visitas.FindAll(vis => vis.CASOS.BALANCE_TOTALIZADOR.MATRICULA.StartsWith(texto, StringComparison.CurrentCultureIgnoreCase));
                }
                else if (visitas.FindAll(vis => vis.CASOS.BALANCE_TOTALIZADOR.LOCALIDAD.StartsWith(texto, StringComparison.CurrentCultureIgnoreCase)).Count > 0)
                {
                    listaVisitas.ItemsSource = visitas.FindAll(vis => vis.CASOS.BALANCE_TOTALIZADOR.LOCALIDAD.StartsWith(texto, StringComparison.CurrentCultureIgnoreCase));
                }
                else
                    listaVisitas.ItemsSource = null;
            }
            else
                listaVisitas.ItemsSource = visitas;
        }
    }
}