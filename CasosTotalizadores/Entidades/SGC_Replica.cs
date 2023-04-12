using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    public partial class SGC_REPLICA
    {
        public long ID { get; set; }
        public int NIS_RAD { get; set; }
        public string TIPO_CONEXION { get; set; }
        public Nullable<int> NIC { get; set; }
        public string ANOMALIA_VIP { get; set; }
        public string ESTADO_SUMINISTRO { get; set; }
        public string TARIFA { get; set; }
        public string DESCRIPCION_CLIENTE { get; set; }
        public string CALLE { get; set; }
        public Nullable<int> NUMERO_PUERTA { get; set; }
        public string LOCALIDAD { get; set; }
        public string SECCION { get; set; }
        public string MUNICIPIO { get; set; }
        public string PROVINCIA { get; set; }
        public string NOMBRE_FINCA { get; set; }
        public string MEDIDOR { get; set; }
        public string MARCA { get; set; }
        public string TIPO_FINCA { get; set; }
        public string TIPO_CLIENTE { get; set; }
        public string TIPO_TENSION { get; set; }
        public string TIPO_SUMINISTRO { get; set; }
        public string CIRCUITO { get; set; }
        public string CENTRO_TRANFORMACION { get; set; }
        public string SECTOR { get; set; }
        public Nullable<int> MULTIPLO { get; set; }
        public Nullable<int> OFICINA { get; set; }
        public Nullable<int> RUTA { get; set; }
        public Nullable<int> ITINERARIO { get; set; }
        public Nullable<int> X { get; set; }
        public Nullable<int> Y { get; set; }
        public Nullable<decimal> LATITUD { get; set; }
        public Nullable<decimal> LONGITUD { get; set; }
        public Nullable<int> NIF { get; set; }
        public Nullable<System.DateTime> FECHA_INSTALACION_MEDIDOR { get; set; }
        public Nullable<System.DateTime> FECHA_ALTA { get; set; }
        public System.DateTime FECHA_CARGA { get; set; }
        public string CALIFICACION_CIRCUITO { get; set; }
        public Nullable<System.DateTime> FECHA_MODIFICACION { get; set; }
    }
}
