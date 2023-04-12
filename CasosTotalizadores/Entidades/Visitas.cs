using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class VISITAS
    {
        public long ID { get; set; }
        //public long ID_CASO { get; set; }
        public string OBSERVACION { get; set; }
        //public Nullable<System.DateTime> FECHA_GENERACION { get; set; }
        //public Nullable<System.DateTime> FECHA_INTERVENCION { get; set; }
        //public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
        public int ID_ESTATUS_VISITA { get; set; }
        public int ID_MOTIVO_VISITA { get; set; }
        //public long ID_BRIGADA { get; set; }

        //public virtual BRIGADAS BRIGADAS { get; set; }
        public virtual CASOS CASOS { get; set; }
        //public virtual ESTATUS_VISITA ESTATUS_VISITA { get; set; }
        public virtual MOTIVOS_VISITA MOTIVOS_VISITA { get; set; }

    }
}
