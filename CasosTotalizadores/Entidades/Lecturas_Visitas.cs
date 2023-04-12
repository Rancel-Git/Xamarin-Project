using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class LECTURAS_VISITAS
    {
        public long ID { get; set; }
        public Nullable<long> ID_VISITA_1 { get; set; }
        public Nullable<Decimal> LECTURA_1 { get; set; }
        public Nullable<long> ID_VISITA_2 { get; set; }
        public Nullable<Decimal> LECTURA_2 { get; set; }
        public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
        public Nullable<System.DateTime> FECHA_LECTURA_1 { get; set; }
        public Nullable<System.DateTime> FECHA_LECTURA_2 { get; set; }

        public virtual VISITAS VISITAS { get; set; }
        public virtual VISITAS VISITAS1 { get; set; }
    }
}
