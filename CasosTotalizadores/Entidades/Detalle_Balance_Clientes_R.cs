using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public class DETALLE_BALANCE_CLIENTES_R
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DETALLE_BALANCE_CLIENTES_R()
        {

        }

        public long ID { get; set; }
        public long ID_BALANCE_TOTALIZADOR { get; set; }
        public long ID_CLIENTE { get; set; }
        public Nullable<long> ID_DETALLE_BALANCE_CLIENTE { get; set; }
        public Nullable<int> NIS { get; set; }
        public Nullable<int> NIC { get; set; }
        public string NUM_MEDIDOR { get; set; }
        //public string MATRICULA { get; set; }
        //public string MARCA { get; set; }
        public Nullable<int> MULTIPLO { get; set; }
        //public string CIRCUITO { get; set; }
        //public string LOCALIDAD { get; set; }
        //public string MUNICIPIO { get; set; }
        //public string SECTOR { get; set; }
        public string TIPO_CONEXION { get; set; }
        public string ESTADO_SUMINISTRO { get; set; }
        public string TIPO_TECNOLOGIA { get; set; }
        public string TECNOLOGIA { get; set; }
        public Nullable<bool> BIDIRECCIONAL { get; set; }
        public string CRITERIO { get; set; }
        public Nullable<double> LECTURA_ANTERIOR { get; set; }
        public Nullable<double> LECTURA_ACTUAL { get; set; }
        public Nullable<double> ENTREGA { get; set; }
        public Nullable<double> CONSUMO { get; set; }
        public string ANOMALIA { get; set; }
        //public Nullable<System.DateTime> FECHA_INSTALACION { get; set; }
        //public Nullable<System.DateTime> FECHA_CARGA { get; set; }
        public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
        public Nullable<bool> ASOCIADO { get; set; }
        public Nullable<bool> FALTA_MATERIAL { get; set; }
        public Nullable<decimal> PRIMERA_LECTURA { get; set; }
        public Nullable<decimal> PRIMERA_LECTURA_DEL { get; set; }
    }
}
