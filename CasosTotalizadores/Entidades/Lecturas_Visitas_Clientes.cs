using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class LECTURAS_VISITAS_CLIENTES
    {
        public long ID { get; set; }
        public Nullable<long> ID_VISITA_1 { get; set; }
        public Nullable<decimal> LECTURA_1 { get; set; }
        public Nullable<long> ID_VISITA_2 { get; set; }
        public Nullable<decimal> LECTURA_2 { get; set; }
        public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
        public Nullable<System.DateTime> FECHA_LECTURA_1 { get; set; }
        public Nullable<System.DateTime> FECHA_LECTURA_2 { get; set; }
        public Nullable<long> ID_DETALLE_BALANCE_CLIENTES { get; set; }
        public long ID_DETALLE_BALANCE_CLIENTES_R { get; set; }

        public virtual DETALLE_BALANCE_CLIENTES DETALLE_BALANCE_CLIENTES { get; set; }
        public virtual DETALLE_BALANCE_CLIENTES_R DETALLE_BALANCE_CLIENTES_R { get; set; }
        public virtual VISITAS VISITAS { get; set; }
        public virtual VISITAS VISITAS1 { get; set; }
    }
}
