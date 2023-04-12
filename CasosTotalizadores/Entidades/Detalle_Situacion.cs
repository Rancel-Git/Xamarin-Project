using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    using System;
    using System.Collections.Generic;

    public partial class DETALLE_SITUACION
    {
        public int ID { get; set; }
        public int ID_SITUACION { get; set; }
        //public string DETALLE { get; set; }
        //public Nullable<System.DateTime> FECHA_CARGA { get; set; }
        //public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
        public Nullable<int> ID_ACCION { get; set; }

        //public virtual ACCIONES_EJECUTADAS ACCIONES_EJECUTADAS { get; set; }
    }
}
