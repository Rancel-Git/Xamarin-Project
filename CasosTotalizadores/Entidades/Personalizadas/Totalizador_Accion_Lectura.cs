using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades.Personalizadas
{
    public class Totalizador_Accion_Lectura
    {
        public TOTALIZADOR Totalizador { get; set; }
        public LECTURAS_VISITAS Lecturas_visitas { get; set; }
        public ACCIONES_VISITA Acciones_visita { get; set; }
        public SITUACIONES_VISITA Situaciones_Visita { get; set; }
    }
}
