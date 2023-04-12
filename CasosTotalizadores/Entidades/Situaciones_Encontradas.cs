using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class SITUACIONES_ENCONTRADAS
    {
        public int ID { get; set; }
        public string SITUACION { get; set; }
        //public Nullable<System.DateTime> FECHA_CARGA { get; set; }
        //public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
        public Nullable<int> ID_TIPO_MEDIDOR { get; set; }
        public virtual ICollection<DETALLE_SITUACION> DETALLE_SITUACION { get; set; }
    }
}
