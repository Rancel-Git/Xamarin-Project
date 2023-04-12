using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace CasosTotalizadores.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class Configuracion : ContentPage
	{
		public Configuracion ()
		{
			InitializeComponent ();
            entIP.Text = Settings.IP;
            entPuerto.Text = Settings.Puerto;
		}

        private void GuardarConf(object sender, EventArgs e)
        {
            Settings.IP = entIP.Text;
            Settings.Puerto = entPuerto.Text;
        }
    }
}