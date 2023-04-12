using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.Entidades
{
    class Medidor
    {
        public String Nis { get; set; }
        public String Nic { get; set; }
        public String EstadoSuministro { get; set; }

        public String CsmoPeriodo { get; set; }

        public String Matricula { get; set; }

        public String NumMedidor { get; set; }
        public String Multiplo { get; set; }

        public static List<Medidor> medidores()
        {
            List<Medidor> medidores = new List<Medidor>();
            medidores.Add(new Medidor
            {
                Nis = "1",
                CsmoPeriodo = "21.00",
                EstadoSuministro = "Situacion correcta",
                Matricula = "MSG547",
                NumMedidor = "1", 
                Multiplo = "40",
                Nic = "8642446"
            });
            medidores.Add(new Medidor
            {
                Nis = "2",
                CsmoPeriodo = "92.00",
                EstadoSuministro = "Situacion correcta",
                Matricula = "DFNU47",
                NumMedidor = "2",
                Multiplo = "80",
                Nic = "3468903"
            });
            medidores.Add(new Medidor
            {
                Nis = "3",
                CsmoPeriodo = "79.00",
                EstadoSuministro = "Situacion correcta",
                Matricula = "KODE43",
                NumMedidor = "3",
                Multiplo = "40",
                Nic = "8642443"
            });
            medidores.Add(new Medidor
            {
                Nis = "4",
                CsmoPeriodo = ".00",
                EstadoSuministro = "Baja voluntaria",
                Matricula = "SSV597",
                NumMedidor = "4",
                Multiplo = "40",
                Nic = "8642489"
            });
            medidores.Add(new Medidor
            {
                Nis = "5",
                CsmoPeriodo = "135.00",
                EstadoSuministro = "Situacion correcta",
                Matricula = "BSG549",
                NumMedidor = "5",
                Multiplo = "80",
                Nic = "1642442"
            });
            return medidores;
        }
    }
}
