using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class CLIENTE
    {
        public long ID { get; set; }
        public long ID_TOTALIZADOR { get; set; }
        public string MARCA { get; set; }
        public string CIRCUITO { get; set; }
        public string MUNICIPIO { get; set; }
        public string LOCALIDAD { get; set; }
        public string NIS { get; set; }
        public string NIC { get; set; }
        public string MATRICULA { get; set; }
        public string NUM_MEDIDOR { get; set; }
        public int MULTIPLO { get; set; }
        public string ESTADO_SUMINISTRO { get; set; }
        public string TIPO_CONEXION { get; set; }
        public string X { get; set; }
        public string Y { get; set; }
        public string LATITUD { get; set; }
        public string LONGITUD { get; set; }
        public System.DateTime FECHA_CARGA { get; set; }
        public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
        public Nullable<bool> MODIFICADO { get; set; }
        public Nullable<bool> INCONSISTENCIA { get; set; }
        public Nullable<bool> MODIFICADO_OPEN { get; set; }
        public Nullable<bool> INCONSISTENCIA_OPEN { get; set; }
        public Nullable<bool> BIDIRECCIONAL { get; set; }
        public string TIPO_TECNOLOGIA { get; set; }
        public Nullable<bool> APROBADO { get; set; }
        public string SECTOR { get; set; }
        public string TECNOLOGIA { get; set; }
    }
}
    