using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades.Personalizadas
{
    public class Situacion_Accion_Lectura
    {
        public ACCIONES_CLIENTES acciones_cliente { get; set; }
        public LECTURAS_VISITAS_CLIENTES lecturas_Visitas_Clientes { get; set; }
        public SITUACIONES_CLIENTES situaciones_Clientes { get; set; }
        public Nullable<decimal> lecturaEnviada { get; set; }
    }
}
