using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class POTENCIAS_ASOCIACION
    {
        public long ID { get; set; }
        public string POTENCIA { get; set; }
        //public System.DateTime FECHA_CARGA { get; set; }
        //public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
        public long ID_TIPO_ALUMBRADO { get; set; }

        //public virtual TIPOS_ALUMBRADOS_PUBLICOS_ASOCIACION TIPOS_ALUMBRADOS_PUBLICOS_ASOCIACION { get; set; }
    }
}
