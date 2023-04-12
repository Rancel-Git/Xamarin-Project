using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class MULTIPLOS_ASOCIACION
    {
        public long ID { get; set; }
        public string MULTIPLO { get; set; }
        //public System.DateTime FECHA_CARGA { get; set; }
        //public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
        public Nullable<int> TIPO_MEDIDOR { get; set; }
    }
}
