using CasosTotalizadores.Entidades;
using CasosTotalizadores.Helpers;
using CasosTotalizadores.Interfaces;
using Plugin.Connectivity;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace CasosTotalizadores.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PaginaPrincipal : MasterDetailPage
    {
        public PaginaPrincipal()
        {
            InitializeComponent();
            IsPresented = false;
            List<MenuItems> SamplesList = new List<MenuItems> {
                        new MenuItems("Refrescar", GrialShapesFont.Eye),
                        //new MenuItems("Configuración", GrialShapesFont.Build),
                        new MenuItems("Cerrar sesión", GrialShapesFont.AccountCircle),
                        new MenuItems("Actualizar", GrialShapesFont.ArrowUp)
                    };
            sampleListView.ItemsSource = SamplesList;
            
        }
        protected async override void OnAppearing()
        {           
            Nombres.Text = Settings.Nombre;
            NombreUsuario.Text = Settings.UserName;
            Settings.Funciona = true;
            if (Settings.FechaLogin.Date < DateTime.Now.Date)
            {
                Settings.IdUsuario = 0;
                Settings.IsLoggedIn = false;
                Settings.Nombre = null;
                Settings.Password = null;
                Settings.UserName = null;
            }
            if (!Settings.IsLoggedIn)
            {
                await Navigation.PushModalAsync(new LoginPage());
            }
            else
            {
                USUARIOS_ASOCIACION _user = new USUARIOS_ASOCIACION();
                _user = await App.UsuariosManager.ObtenerAsync("Admin");
                int horas = DateTime.Now.Subtract(_user.FECHA_CARGA).Hours;
                int minutos = DateTime.Now.Subtract(_user.FECHA_CARGA).Minutes;
                Double totalHoras = DateTime.Now.Subtract(_user.FECHA_CARGA).TotalHours;
                AppVersion.Text = DependencyService.Get<IAndroidMethods>().AppVersion();
                if (Convert.ToDecimal(AppVersion.Text) < Convert.ToDecimal(_user.ZONA))
                {
                    if (totalHoras >= 24)
                    {
                        await DisplayAlert("Aviso", "La aplicación no funcionará hasta que actualice", "OK");
                        Settings.Funciona = false;
                    }
                    else
                    {
                        await DisplayAlert("Aviso", "Debe actualizar la aplicación. Le quedan " + (23 - horas) + " horas y " + (60 - minutos) + " minutos para que la aplicación deje de funcionar", "OK");
                    }
                }
                Detail = new NavigationPage(new VisitaView());
            }
        }
        public void OnItemSelected(object sender, SelectedItemChangedEventArgs e)
        {

            if (sampleListView.SelectedItem is MenuItems sample)
            {
                if (sample.Name == "Cerrar sesión")
                {
                    Settings.IsLoggedIn = false;
                    Settings.IdUsuario = 0;
                    Settings.UserName = string.Empty;
                    Settings.Nombre = string.Empty;
                    Settings.Password = string.Empty;
    
                    OnAppearing();
                }
                else if (sample.Name == "Configuración")
                {
                    Detail = new NavigationPage(new Configuracion());
                }
                else if (sample.Name == "Refrescar")
                {
                    Settings.CantVisitas = -1;
                    Detail = new NavigationPage(new VisitaView());
                }
                else if (sample.Name == "Actualizar")
                {
                    Device.OpenUri(new Uri(""));
                }
                sampleListView.SelectedItem = null;
            }
        }
    }
    public class MenuItems 
    {
        private readonly string _name;
        private readonly bool _modal;
        private readonly string _icon;
        private readonly bool _justNotifyNavigateIntent;
        private readonly Action<INavigation> _customNavigation;
        public MenuItems(
                string name,
                string icon = GrialShapesFont.AccountCircle,
                bool modal = false,
                bool justNotifyNavigateIntent = false,
                Action<INavigation> customNavigation = null
            )
        {
            _name = name;
            _icon = icon;
            _modal = modal;
            _justNotifyNavigateIntent = justNotifyNavigateIntent;
            _customNavigation = customNavigation;
        }
        public string Name
        {
            get
            {
                return _name;
            }
        }

        public string Icon
        {
            get
            {
                return _icon;
            }
        }        
    }
}