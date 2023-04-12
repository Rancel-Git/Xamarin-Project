using System.Collections.Generic;
using Xamarin.Forms;
using CasosTotalizadores.Views;
using CasosTotalizadores.DataService;
using CasosTotalizadores.Entidades;
using Plugin.Connectivity;
using CasosTotalizadores.Entidades.Personalizadas;

namespace CasosTotalizadores
{
	//[XamlCompilation (XamlCompilationOptions.Skip)]
	public partial class App : Application
	{
        public static Manager<VISITAS> VisitasManager { get; private set; }
        public static Manager<CIRCUITOS_ASOCIACION> CircuitosManager { get; private set; }
        public static Manager<MULTIPLOS_ASOCIACION> MultiplosManager { get; private set; }
        public static Manager<TIPOS_CONEXIONES_ASOCIACION> TiposConexionManager { get; private set; }
        public static Manager<TIPOS_TECNOLOGIAS_ASOCIACION> TiposTecnologiasManager { get; private set; }
        public static Manager<CLIENTE> ClientesManager { get; private set; }
        public static Manager<USUARIOS_ASOCIACION> UsuariosManager { get; private set; }
        public static Manager<TOTALIZADOR> TotalizadoresManager { get; private set; }
        public static Manager<Totalizador_Accion_Lectura> Totalizador_AccionManager { get; private set; }
        public static Manager<NO_TOTALIZADOS_DESCONOCIDOS> No_Totalizados_DesconocidosManager { get; private set; }
        public static Manager<LECTURAS_VISITAS> LecturaManager { get; private set; }
        public static Manager<ACCIONES_EJECUTADAS> Acciones_ejecutadasManager { get; private set; }
        public static Manager<SITUACIONES_ENCONTRADAS> SituacionManager { get; private set; }
        public static Manager<DETALLE_SITUACION> Detalle_SituacionManager { get; private set; }
        public static Manager<Situacion_Accion_Lectura> Acciones_ClientesManager { get; private set; }
        public static Manager<TIPOS_ALUMBRADOS_PUBLICOS_ASOCIACION> Tipos_ConsumosManager { get; private set; }
        public static Manager<ESTADOS_FUNCIONALES_ASOCIACION> Estados_ConsumosManager { get; private set; }
        public static Manager<POTENCIAS_ASOCIACION> PotenciasManager { get; private set; }
        public static Manager<ALUMBRADO_PUBLICO> AlumbradosManager { get; private set; }
        public static Manager<FOTOS_ASOCIACIONES> FotosManager { get; private set; }
        public static Manager<CLIENTE> Maestro_MedidorManager { get; private set; }
        public static Manager<SGC_REPLICA> SGCManager { get; private set; }
        public static Manager<Nuevo_Cliente> Nuevo_ClientesManager { get; private set; }
        public static Manager<DETALLE_BALANCE_CLIENTES_R> DetalleManager { get; private set; }

        //Colecciones de datos para opciones de modificación de totalizador
        public static List<CIRCUITOS_ASOCIACION> circuitos;
        public static List<MULTIPLOS_ASOCIACION> multiplos;
        public static List<TIPOS_CONEXIONES_ASOCIACION> tiposConexiones;
        public static List<TIPOS_TECNOLOGIAS_ASOCIACION> tiposTecnologias;
        public static List<DETALLE_BALANCE_CLIENTES_R> detalles;

        //Colecciones de datos para opciones de creación y modificación de otros consumos
        public static List<TIPOS_ALUMBRADOS_PUBLICOS_ASOCIACION> tiposConsumos;
        public static List<ESTADOS_FUNCIONALES_ASOCIACION> estadosConsumos;
        public static List<POTENCIAS_ASOCIACION> potencias;

        //Colecciones de datos para ejecución de acciones en clientes
        public static List<ACCIONES_EJECUTADAS> acciones;
        public static List<SITUACIONES_ENCONTRADAS> situaciones;
        public static List<DETALLE_SITUACION> detalle_Situaciones;



        public static bool logueado = false;
        public App()
		{
			InitializeComponent();
            //Settings.IP = "ip pc";
            //Settings.Puerto = "6413/api";
            
            No_Totalizados_DesconocidosManager = new Manager<NO_TOTALIZADOS_DESCONOCIDOS>(new RestService<NO_TOTALIZADOS_DESCONOCIDOS>());
            Nuevo_ClientesManager = new Manager<Nuevo_Cliente>(new RestService<Nuevo_Cliente>());
            SituacionManager = new Manager<SITUACIONES_ENCONTRADAS>(new RestService<SITUACIONES_ENCONTRADAS>());
            Detalle_SituacionManager = new Manager<DETALLE_SITUACION>(new RestService<DETALLE_SITUACION>());
            Acciones_ejecutadasManager = new Manager<ACCIONES_EJECUTADAS>(new RestService<ACCIONES_EJECUTADAS>());
            Acciones_ClientesManager = new Manager<Situacion_Accion_Lectura>(new RestService<Situacion_Accion_Lectura>());
            Estados_ConsumosManager = new Manager<ESTADOS_FUNCIONALES_ASOCIACION>(new RestService<ESTADOS_FUNCIONALES_ASOCIACION>());
            TiposTecnologiasManager = new Manager<TIPOS_TECNOLOGIAS_ASOCIACION>(new RestService<TIPOS_TECNOLOGIAS_ASOCIACION>());
            Maestro_MedidorManager = new Manager<CLIENTE>(new RestService<CLIENTE>());
            Tipos_ConsumosManager = new Manager<TIPOS_ALUMBRADOS_PUBLICOS_ASOCIACION>(new RestService<TIPOS_ALUMBRADOS_PUBLICOS_ASOCIACION>());
            TiposConexionManager = new Manager<TIPOS_CONEXIONES_ASOCIACION>(new RestService<TIPOS_CONEXIONES_ASOCIACION>());
            TotalizadoresManager = new Manager<TOTALIZADOR>(new RestService<TOTALIZADOR>());
            AlumbradosManager = new Manager<ALUMBRADO_PUBLICO>(new RestService<ALUMBRADO_PUBLICO>());
            CircuitosManager = new Manager<CIRCUITOS_ASOCIACION>(new RestService<CIRCUITOS_ASOCIACION>());
            MultiplosManager = new Manager<MULTIPLOS_ASOCIACION>(new RestService<MULTIPLOS_ASOCIACION>());
            PotenciasManager = new Manager<POTENCIAS_ASOCIACION>(new RestService<POTENCIAS_ASOCIACION>());
            ClientesManager = new Manager<CLIENTE>(new RestService<CLIENTE>());
            UsuariosManager = new Manager<USUARIOS_ASOCIACION>(new RestService<USUARIOS_ASOCIACION>());
            VisitasManager = new Manager<VISITAS>(new RestService<VISITAS>());
            LecturaManager = new Manager<LECTURAS_VISITAS>(new RestService<LECTURAS_VISITAS>());
            FotosManager = new Manager<FOTOS_ASOCIACIONES>(new RestService<FOTOS_ASOCIACIONES>());
            SGCManager = new Manager<SGC_REPLICA>(new RestService<SGC_REPLICA>());
            Totalizador_AccionManager = new Manager<Totalizador_Accion_Lectura>(new RestService<Totalizador_Accion_Lectura>());
            DetalleManager = new Manager<DETALLE_BALANCE_CLIENTES_R>(new RestService<DETALLE_BALANCE_CLIENTES_R>());
            MainPage = new PaginaPrincipal();
            //MainPage = GetMainPage();
            //MainPage.SetValue(NavigationPage.BarTextColorProperty, Color.White);
        }
        protected override void OnStart()
        {
            Settings.CantVisitas = -1;            
        }
        protected override void OnResume()
        {
            
        }
    }
}
