using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class FOTOS_ASOCIACIONES
    {
        public int ID { get; set; }
        public string NOMBRE { get; set; }
        public long ID_TOTALIZADOR { get; set; }
        public Nullable<int> USUARIO_CARGA { get; set; }
        public System.DateTime FECHA_CARGA { get; set; }
        public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
        public string LATITUD { get; set; }
        public string LONGITUD { get; set; }

        public virtual TOTALIZADOR TOTALIZADOR { get; set; }
        public virtual USUARIOS_ASOCIACION USUARIOS_ASOCIACION { get; set; }
    }
}
