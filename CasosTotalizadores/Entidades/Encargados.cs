using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class ENCARGADOS
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ENCARGADOS()
        {
        }

        public int ID { get; set; }
        public int ID_USUARIO { get; set; }
        public Nullable<System.DateTime> FECHA_CARGA { get; set; }
        public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }

        public virtual USUARIOS_ASOCIACION USUARIOS_ASOCIACION { get; set; }
    }
}
