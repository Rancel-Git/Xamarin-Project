using CasosTotalizadores.Entidades;
using DevExpress.Mobile.DataGrid;
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
    public partial class InformacionVisita : TabbedPage
    {
        VISITAS visitaInf;
        public InformacionVisita(ref VISITAS visita)
        {
            visitaInf = visita;
            InitializeComponent();
            BindingContext = visitaInf;
            if(!(visitaInf.CASOS.BALANCE_TOTALIZADOR.PORCENTAJE_PERDIDA is null))
                txtPorcentaje.Text = (Convert.ToString((float)(Math.Round((double)(100*visitaInf.CASOS.BALANCE_TOTALIZADOR.PORCENTAJE_PERDIDA), 2))));
        }
        async private void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new TrabajarVisita(visitaInf.ID, 0));
        }
    }
}