using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    using System;
    using System.Collections.Generic;

    public partial class LECTURA
    {
        public int ID { get; set; }
        public Nullable<System.DateTime> FECHA_LECTURA { get; set; }
        public Nullable<System.DateTime> FECHA_CARGA { get; set; }
        public int ID_TIPO_LECTURA { get; set; }
        public int ID_ESTATUS_LECTURA { get; set; }
        public int ID_CRITERIO_LECTURA { get; set; }
        public string NUM_MEDIDOR { get; set; }
        public Nullable<decimal> LECTURA1 { get; set; }
        public Nullable<decimal> PORC_LECT_REC { get; set; }
        public string OBSERVACION { get; set; }
        public Nullable<bool> ESTATUS { get; set; }
    }
}
