using CasosTotalizadores.Entidades;
using CasosTotalizadores.Interfaces;
using System;
using System.Diagnostics;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace CasosTotalizadores.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginPage : ContentPage
    {
        private USUARIOS_ASOCIACION _user = new USUARIOS_ASOCIACION();
        public LoginPage()
        {
            InitializeComponent();
            NavigationPage.SetHasNavigationBar(this, false);
        }
        async private void Button_Clicked(object sender, EventArgs e)
        {
            await Navigation.PopModalAsync();
        }
        async private void OnLogin(object sender, EventArgs e)
        {
            try
            {
                IsBusy.IsRunning = true;
                Title = string.Empty;
                if (!string.IsNullOrEmpty(txtUsuario.Text) && !string.IsNullOrEmpty(txtPass.Text))
                {
                    _user = await App.UsuariosManager.ObtenerAsync(string.Format("{0}:{1}", txtUsuario.Text, txtPass.Text));
                    if (_user == null)
                    {
                        Message.Text = "Usuario o contraseña incorrecta";
                    }
                    else if (_user.ID > 0)
                    {
                        Settings.IsLoggedIn = true;
                        Settings.UserName = _user.USUARIO;
                        Settings.Nombre = _user.NOMBRES;
                        Settings.IdUsuario = _user.ID;
                        Settings.Password = txtPass.Text;
                        Settings.FechaLogin = DateTime.Now;
                        await Navigation.PopModalAsync();

                    }
                    else
                        Message.Text = "Error de conexión";

                    IsBusy.IsRunning = false;
                }
                else
                {
                    Message.Text = "Ambos campos son requeridos";
                    IsBusy.IsRunning = false;
                }
                //User = null;
            }
            catch (Exception ex)
            {
                IsBusy.IsRunning = false;
                Message.Text = ex.Message;
            }

        }

        protected override bool OnBackButtonPressed()
        {
            DependencyService.Get<IAndroidMethods>().CloseApp();

            return base.OnBackButtonPressed();
        }
        protected override void OnDisappearing()
        {
            Settings.IsLoggedIn = true;
            Settings.UserName = _user.USUARIO;
            Settings.Nombre = _user.NOMBRES;
            Settings.IdUsuario = _user.ID;
        }
        async private void Config(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Configuracion());
        }
    }
}