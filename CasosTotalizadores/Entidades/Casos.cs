using System;

namespace CasosTotalizadores.Entidades
{
    public partial class CASOS
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CASOS()
        {
        }
        public long ID { get; set; }
        //public Nullable<bool> VISITA_NOCTURNA { get; set; }
        //public Nullable<System.DateTime> FECHA_CARGA { get; set; }
        //public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
        //public Nullable<System.DateTime> FECHA_RESUELTO { get; set; }
        public long ID_BALANCE_TOTALIZADOR { get; set; }
        //public Nullable<bool> RETRABAJO { get; set; }
        //public Nullable<bool> PENDIENTE { get; set; }
        //public Nullable<System.DateTime> FECHA_TRABAJADO { get; set; }
        public virtual BALANCE_TOTALIZADOR BALANCE_TOTALIZADOR { get; set; }
    }
}
