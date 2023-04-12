using CasosTotalizadores.DataService;
using System.Collections.Generic;
using System.Diagnostics;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

namespace CasosTotalizadores.DataService
{
    public class Manager<T>
    {
        IRestService<T> restService;

        public Manager(IRestService<T> service)
        {
            restService = service;
        }

        public Task<List<T>> ObtenerListaAsync(string parametro = "")
        {
            return restService.ActualizarListaAsync(parametro);
        }
        //public Task<List<T>> ObtenerVisitas(long idBrigada = 0)
        //{
        // return restService.ObtenerV(idBrigada);
        //}
        public Task<T> ObtenerAsync(string parameto = "Defecto", bool maestro = false)
        {
            return restService.ActualizarAsync(parameto, maestro);
        }

        public Task<HttpResponseMessage> SaveTaskAsync(T item, bool isNewItem = false)
        {
            return restService.SaveClienteAsync(item, isNewItem);
        }

        public Task DeleteTaskAsync(string parameto = "Defecto")
        {
            return restService.DeleteClienteAsync(parameto);
        }
        public Task<HttpResponseMessage> ActualizarTotalizador(T item)
        {
            return restService.ActualizarTotalizador(item);
        }
        public Task<HttpResponseMessage> DeterminarColector(string item)
        {
            return restService.DeterminarColector(item);
        }
        public Task<HttpResponseMessage> CantVisitas(string brigada)
        {
            return restService.CantVisitas(brigada);
        }
        public Task<HttpResponseMessage> VerificarCriterio(string nis)
        {
            return restService.VerificarCriterio(nis);
        }
    }
}
