using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public class USUARIOS_ASOCIACION
    {
        public int ID { get; set; }
        public string NOMBRES { get; set; }
        public string APELLIDOS { get; set; }
        public string SECTOR { get; set; }
        public string USUARIO { get; set; }
        public string PASSWORD { get; set; }
        public System.DateTime FECHA_CARGA { get; set; }
        public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
        public string ZONA { get; set; }
    }
}
