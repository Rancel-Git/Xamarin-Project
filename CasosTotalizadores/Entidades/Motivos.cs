using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class MOTIVOS
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MOTIVOS()
        {
        }

        public int ID { get; set; }
        public string MOTIVO { get; set; }
        //public Nullable<System.DateTime> FECHA_CARGA { get; set; }
        //public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
    }
}
