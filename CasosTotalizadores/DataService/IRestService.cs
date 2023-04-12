using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

namespace CasosTotalizadores.DataService
{
    public interface IRestService<T>
    {
        Task<List<T>> ActualizarListaAsync(string medidor);
        Task<T> ActualizarAsync(string nis, bool maestro);
        //Task<List<T>> ObtenerV(long idBrigada);

        Task<HttpResponseMessage> SaveClienteAsync(T item, bool isNewItem);
        Task<HttpResponseMessage> ActualizarTotalizador(T item);
        Task<HttpResponseMessage> DeterminarColector(string item);
        Task DeleteClienteAsync(string id);
        Task<HttpResponseMessage> CantVisitas(string brigada);
        Task<HttpResponseMessage> VerificarCriterio(string nis);
    }
}
