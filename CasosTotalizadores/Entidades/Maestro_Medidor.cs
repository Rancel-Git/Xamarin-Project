using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class MAESTRO_MEDIDOR
    {
        public long ID { get; set; }
        public string NIS { get; set; }
        public string NIC { get; set; }
        public string NUM_MEDIDOR { get; set; }
        public System.DateTime FECHA_CARGA { get; set; }
        public System.DateTime FECHA_MODIFICACION { get; set; }
        public string OBSERVACION { get; set; }
        public bool ESTATUS { get; set; }
        public string BIDIRECCIONAL { get; set; }
        public string TARIFA { get; set; }
    }
}
