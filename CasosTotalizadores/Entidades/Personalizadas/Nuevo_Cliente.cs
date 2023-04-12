using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades.Personalizadas
{
    public enum TipoCliente
    {
        OtroTotalizador,
        NoTotalizadoDesc,
        SGC,
        YaInstalado
    };
    public class Nuevo_Cliente
    {
        public CLIENTE cliente { get; set; }
        public long ID_BALANCE_TOTALIZADOR { get; set; }
        public TipoCliente tipoCliente { get; set; }
        public decimal lectura { get; set; }
        public long idVisita { get; set; }
    }
}
