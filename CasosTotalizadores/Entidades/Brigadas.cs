using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class BRIGADAS
    {
        public long ID { get; set; }
        public string BRIGADA { get; set; }
        public string AYUDANTE { get; set; }
        public string INSPECTOR { get; set; }
        public int ID_USUARIO { get; set; }
        public int ID_ENCARGADO { get; set; }
        public Nullable<System.DateTime> FECHA_CARGA { get; set; }
        public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
        public string OPERATIVA { get; set; }

        public virtual USUARIOS_ASOCIACION USUARIOS_ASOCIACION { get; set; }
        public virtual ENCARGADOS ENCARGADOS { get; set; }
    }
}
