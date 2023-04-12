using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class SITUACIONES_CLIENTES
    {
        public int ID_SITUACION { get; set; }
        public long ID_VISITA { get; set; }
        public long ID_DETALLE_BALANCE_CLIENTES { get; set; }
        public Nullable<System.DateTime> FECHA_CARGA { get; set; }
        public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
        public Nullable<long> ID_DETALLE_BALANCE_CLIENTES_R { get; set; }

        public virtual DETALLE_BALANCE_CLIENTES DETALLE_BALANCE_CLIENTES { get; set; }
        public virtual DETALLE_SITUACION DETALLE_SITUACION { get; set; }
        public virtual VISITAS VISITAS { get; set; }
        public virtual DETALLE_BALANCE_CLIENTES_R DETALLE_BALANCE_CLIENTES_R { get; set; }
    }
}
