using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    using Newtonsoft.Json;
    using System;
    using System.Collections.Generic;

    public partial class TIPO_MEDIDORES
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TIPO_MEDIDORES()
        {
        }

        public int ID { get; set; }
        public string TIPO { get; set; }
        public Nullable<System.DateTime> FECHA_CARGA { get; set; }
    }
}
