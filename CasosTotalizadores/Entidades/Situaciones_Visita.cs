using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class SITUACIONES_VISITA
    {
        public int ID_SITUACION { get; set; }
        public long ID_VISITA { get; set; }
        public Nullable<System.DateTime> FECHA_CARGA { get; set; }
        public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }

        public virtual DETALLE_SITUACION DETALLE_SITUACION { get; set; }
        public virtual VISITAS VISITAS { get; set; }
    }
}
