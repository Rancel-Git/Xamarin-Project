using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class BALANCE_TOTALIZADOR
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public BALANCE_TOTALIZADOR()
        {
        }

        public long ID { get; set; }
        public long ID_TOTALIZADOR { get; set; }
        //public string ZONA { get; set; }
        //public Nullable<int> CANTIDAD_CLIENTES_BALANCE { get; set; }
        public Nullable<double> LECTURA_ANTERIOR { get; set; }
        public Nullable<double> LECTURA_ACTUAL { get; set; }
        public Nullable<System.DateTime> FECHA_LECTURA_ANTERIOR { get; set; }
        public Nullable<System.DateTime> FECHA_LECTURA_ACTUAL { get; set; }
        public Nullable<double> ENTREGA { get; set; }
        public Nullable<double> CONSUMO_CLIENTES { get; set; }
        public Nullable<double> CONSUMO_ALUMBRADO { get; set; }
        public Nullable<double> PERDIDA { get; set; }
        public Nullable<double> PORCENTAJE_PERDIDA { get; set; }
        //public string TIPO_ANOMALIA { get; set; }
        //public Nullable<System.DateTime> FECHA_INSTALACION { get; set; }
        //public Nullable<System.DateTime> FECHA_CARGA { get; set; }
        //public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
        //public int NIS { get; set; }
        //public Nullable<int> NIC { get; set; }
        public string NUM_MEDIDOR { get; set; }
        public string FullNum_Medidor => string.Format("{0} {1}", "Totalizador: ", NUM_MEDIDOR);
        public string MATRICULA { get; set; }
        public string FullMatricula => string.Format("{0} {1}", "CT: ", MATRICULA);
        //public string MARCA { get; set; }
        public Nullable<int> MULTIPLO { get; set; }
        public string CIRCUITO { get; set; }
        public string LOCALIDAD { get; set; }
        public string FullLocalidad => string.Format("{0} {1}", "Localidad: ", LOCALIDAD);
        //public string MUNICIPIO { get; set; }
        //public string SECTOR { get; set; }
        public string TIPO_CONEXION { get; set; }
        //public string ESTADO_ASOCIACION { get; set; }
        //public string TIPO_TECNOLOGIA { get; set; }
        public Nullable<bool> BIDIRECCIONAL { get; set; }
        public string FullBidireccional => string.Format("{0}", BIDIRECCIONAL.Value ? "Neto" : "Normal");
        //public string TECNOLOGIA { get; set; }
        public string CRITERIO { get; set; }
        //public Nullable<int> ID_MOTIVO { get; set; }
        //public string ESTADO { get; set; }

        public virtual TOTALIZADOR TOTALIZADOR { get; set; }
        //public virtual ICollection<DETALLE_BALANCE_CLIENTES> DETALLE_BALANCE_CLIENTES { get; set; }
        public virtual MOTIVOS MOTIVOS { get; set; }
        public virtual ICollection<DETALLE_BALANCE_CLIENTES_R> DETALLE_BALANCE_CLIENTES_R { get; set; }
        //public virtual ENCARGADOS ENCARGADOS { get; set; }
        public int cantClientes => (DETALLE_BALANCE_CLIENTES_R.Where(d => d.ASOCIADO == true).Count());
    }
}
