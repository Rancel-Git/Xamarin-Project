using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class TIPOS_CONEXIONES_ASOCIACION
    {
        public long ID { get; set; }
        public string TIPO_CONEXION { get; set; }
        public string DESCRIPCION { get; set; }
        public System.DateTime FECHA_CARGA { get; set; }
        public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
    }
}
