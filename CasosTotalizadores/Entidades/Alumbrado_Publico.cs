using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class ALUMBRADO_PUBLICO
    {
        public long ID { get; set; }
        public long ID_TOTALIZADOR { get; set; }
        public string DESCRIPCION { get; set; }
        public int POTENCIA { get; set; }
        public string ESTADO { get; set; }
        public int CANTIDAD { get; set; }
        public Nullable<bool> POTENCIA_MEDIDA { get; set; }
        public System.DateTime FECHA_CARGA { get; set; }
        //public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
    }
}
