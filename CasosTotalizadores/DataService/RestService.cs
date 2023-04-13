using CasosTotalizadores.Entidades;
using CasosTotalizadores.Entidades.Personalizadas;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace CasosTotalizadores.DataService
{
    public class RestService<T> : IRestService<T>
    {
        HttpClient client;
        public List<T> Objetos { get; private set; }
        public T Objeto { get; private set; }

        public RestService()
        {
            client = new HttpClient
            {
                MaxResponseContentBufferSize = 9000000
            };
        }
        public async Task<List<T>> ActualizarListaAsync(string parametro)
        {
            string url = "http://" + Settings.IP + ":" + Settings.Puerto;
            
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Settings.token);
            client.DefaultRequestHeaders.Remove("credenciales");
            Objetos = new List<T>();
            var uri = new Uri(string.Format(url + "/visitas", string.Empty));
            if (typeof(T).FullName == "CasosTotalizadores.Entidades.VISITAS")
            {
                client.DefaultRequestHeaders.Add("credenciales", Settings.UserName + ":" + Settings.Password);
                uri = new Uri(string.Format(url + "/visitas", string.Empty));
            }
            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.CIRCUITOS_ASOCIACION")
            {
                uri = new Uri(string.Format(url + "/circuitos", string.Empty));
            }
            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.MULTIPLOS_ASOCIACION")
            {
                uri = new Uri(string.Format(url + "/multiplos", string.Empty));
            }
            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.TIPOS_CONEXIONES_ASOCIACION")
            {
                uri = new Uri(string.Format(url + "/tipos_conexiones", string.Empty));
            }
            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.ACCIONES_EJECUTADAS")
            {
                uri = new Uri(string.Format(url + "/accionesEjecutadas", string.Empty));
            }
            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.SITUACIONES_ENCONTRADAS")
            {
                uri = new Uri(string.Format(url + "/situacionEncontrada", string.Empty));
            }
            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.DETALLE_SITUACION")
            {
                uri = new Uri(string.Format(url + "/detallesSituaciones", string.Empty));
            }
            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.ESTADOS_FUNCIONALES_ASOCIACION")
            {
                uri = new Uri(string.Format(url + "/estados_Consumos", string.Empty));
            }
            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.POTENCIAS_ASOCIACION")
            {
                uri = new Uri(string.Format(url + "/potencias", string.Empty));
            }
            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.TIPOS_ALUMBRADOS_PUBLICOS_ASOCIACION")
            {
                uri = new Uri(string.Format(url + "/tipos_consumos", string.Empty));
            }
            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.TIPOS_TECNOLOGIAS_ASOCIACION")
            {
                uri = new Uri(string.Format(url + "/Tipos_Tecnologias", string.Empty));
            }
            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.SGC_REPLICA")
            {
                uri = new Uri(string.Format(url + "/SGC_Replica%2F" + parametro, string.Empty));
            }
            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.DETALLE_BALANCE_CLIENTES_R")
            {
                uri = new Uri(string.Format(url + "/detalle_balances_r%2F" + parametro, string.Empty));
            }
            try
            {
                HttpResponseMessage response;
                do
                {
                    Debug.WriteLine(Settings.token);
                    response = await client.GetAsync(uri);
                    if (response.IsSuccessStatusCode)
                    {
                        var content = await response.Content.ReadAsStringAsync();
                        Objetos = JsonConvert.DeserializeObject<List<T>>(content);
                    }
                    else if (response.StatusCode == HttpStatusCode.Unauthorized)
                    {
                        RestaurarToken();
                        client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Settings.token);
                    }
                } while (response.StatusCode == HttpStatusCode.Unauthorized);
            }
            catch (Exception ex)
            {
                Debug.WriteLine(@"				ERROR {0}", ex.Message);
            }

            return Objetos;
        }

        public async Task<HttpResponseMessage> SaveClienteAsync(T item, bool isNewItem = false)
        {
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));            //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Basic", Convert.ToBase64String(Encoding.UTF8.GetBytes(Settings.UserName + ":" + Settings.Password)));
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Settings.token);
            client.DefaultRequestHeaders.Remove("credenciales");
            client.DefaultRequestHeaders.Add("credenciales", Settings.UserName + ":" + Settings.Password);
            string url = "http://" + Settings.IP + ":" + Settings.Puerto;
            //string url = "10.200.98.90:64413/api";

            var uri = new Uri(string.Format(url + "/visitas", string.Empty));
            if (typeof(T).FullName == "CasosTotalizadores.Entidades.Personalizadas.Totalizador_Accion_Lectura")
                uri = new Uri(string.Format(url + "/totalizadores", string.Empty));
            if (typeof(T).FullName == "CasosTotalizadores.Entidades.Personalizadas.Nuevo_Cliente")
                uri = new Uri(string.Format(url + "/clientes", string.Empty));
            if (typeof(T).FullName == "CasosTotalizadores.Entidades.LECTURAS_VISITAS_CLIENTES")
                uri = new Uri(string.Format(url + "/lecturas_visitas_clientes", string.Empty));
            if (typeof(T).FullName == "CasosTotalizadores.Entidades.Personalizadas.Situacion_Accion_Lectura")
                uri = new Uri(string.Format(url + "/situacionAccionLectura", string.Empty));
            if (typeof(T).FullName == "CasosTotalizadores.Entidades.ALUMBRADO_PUBLICO")
                uri = new Uri(string.Format(url + "/otros_Consumos", string.Empty));
            if (typeof(T).FullName == "CasosTotalizadores.Entidades.FOTOS_ASOCIACIONES")
                uri = new Uri(string.Format(url + "/fotos_Asociaciones", string.Empty));
            if (typeof(T).FullName == "CasosTotalizadores.Entidades.LECTURAS_VISITAS")
                uri = new Uri(string.Format(url + "/lecturas_visitas", string.Empty));

            var json = JsonConvert.SerializeObject(item, Formatting.Indented);
            var buffer = System.Text.Encoding.UTF8.GetBytes(json);

            var byteContent = new ByteArrayContent(buffer);

            byteContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            HttpResponseMessage response = null;
            do
            {
                if (isNewItem)
                {
                    response = await client.PostAsync(uri, byteContent);
                }
                else
                {
                    response = await client.PutAsync(uri, byteContent);
                }
                if (response.StatusCode == HttpStatusCode.Unauthorized)
                {
                    RestaurarToken();
                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Settings.token);
                }
            } while (response.StatusCode == HttpStatusCode.Unauthorized);
            return response;
        }
        public async Task<HttpResponseMessage> ActualizarTotalizador(T item)
        {
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));            //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Basic", Convert.ToBase64String(Encoding.UTF8.GetBytes(Settings.UserName + ":" + Settings.Password)));
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Settings.token);
            client.DefaultRequestHeaders.Remove("credenciales");
            client.DefaultRequestHeaders.Add("credenciales", Settings.UserName + ":" + Settings.Password);
            //string url = "10.200.98.90:64413/api";
            string url = "http://" + Settings.IP + ":" + Settings.Puerto;
            var uri = new Uri(string.Format(url + "/actualizartotalizador", string.Empty)); ;
            var json = JsonConvert.SerializeObject(item, Formatting.Indented);
            var buffer = System.Text.Encoding.UTF8.GetBytes(json);

            var byteContent = new ByteArrayContent(buffer);

            byteContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
            var content = new StringContent(json, Encoding.UTF8, "application/json");
            HttpResponseMessage response = null;
            do
            {
                response = await client.PostAsync(uri, byteContent);
                if (response.StatusCode == HttpStatusCode.Unauthorized)
                {
                    RestaurarToken();
                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Settings.token);
                }
            } while (response.StatusCode == HttpStatusCode.Unauthorized);
            return response;
        }
        public async Task DeleteClienteAsync(string parametro)
        {
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));            //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Basic", Convert.ToBase64String(Encoding.UTF8.GetBytes(Settings.UserName + ":" + Settings.Password)));
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Settings.token);
            client.DefaultRequestHeaders.Remove("credenciales");
            client.DefaultRequestHeaders.Add("credenciales", Settings.UserName + ":" + Settings.Password);
            string url = "http://" + Settings.IP + ":" + Settings.Puerto;
            //string url = "10.200.98.90:64413/api";
            var uri = new Uri(string.Format(url + "/no_Totalizados_Desconocidos%2F" + parametro, string.Empty));
            if (typeof(T).FullName == "CasosTotalizadores.Entidades.ALUMBRADO_PUBLICO")
                uri = new Uri(string.Format(url + "/otros_Consumos%2F" + parametro, string.Empty));

            try
            {
                var response = await client.DeleteAsync(uri);

                if (response.IsSuccessStatusCode)
                {
                    Debug.WriteLine("Eliminado");
                }

            }
            catch (Exception ex)
            {
                Debug.WriteLine(@"				ERROR {0}", ex.Message);
            }
        }

        public async Task<T> ActualizarAsync(string parametro, bool maestro)
        {
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Settings.token);
            client.DefaultRequestHeaders.Remove("credenciales");
            string url = "http://" + Settings.IP + ":" + Settings.Puerto + "/apisgat/api";
            //string url = "10.200.98.90:64413/api";
            var uri = new Uri(string.Format(url + "/clientes%2F" + parametro, string.Empty));
            if (maestro)
                uri = new Uri(string.Format(url + "/maestrosMedidores%2F" + parametro, string.Empty));

            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.USUARIOS_ASOCIACION" && parametro.Length == 5 && parametro == "Admin")
            {
                uri = new Uri(string.Format(url + "/usuarios%2F" + parametro, string.Empty));
            }
            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.USUARIOS_ASOCIACION")
            {
                uri = new Uri(string.Format(url + "/login", string.Empty));
                client.DefaultRequestHeaders.Remove("credenciales");
                client.DefaultRequestHeaders.Add("credenciales", parametro);
            }
            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.TOTALIZADOR")
            {
                uri = new Uri(string.Format(url + "/totalizadores%2F" + parametro, string.Empty));
            }
            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.NO_TOTALIZADOS_DESCONOCIDOS")
            {
                uri = new Uri(string.Format(url + "/no_Totalizados_Desconocidos%2F" + parametro, string.Empty));
            }
            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.VISITAS")
            {
                uri = new Uri(string.Format(url + "/visitas%2F" + parametro, string.Empty));
            }
            else if (typeof(T).FullName == "CasosTotalizadores.Entidades.SGC_REPLICA")
            {
                uri = new Uri(string.Format(url + "/SGC_ReplicaC%2F" + parametro, string.Empty));
            }
            try
            {
                HttpResponseMessage response;
                try
                {


                    do
                    {
                        response = await client.GetAsync(uri);
                        if (response.StatusCode == HttpStatusCode.Unauthorized)
                        {
                            RestaurarToken();
                            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Settings.token);
                        }
                    } while (response.StatusCode == HttpStatusCode.Unauthorized);
                    Objeto = JsonConvert.DeserializeObject<T>(await response.Content.ReadAsStringAsync());
                }
                catch (Exception e)
                {
                    Debug.WriteLine(e.Message);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(@"				ERROR {0}", ex.Message);
            }

            return Objeto;
        }
        public async Task<HttpResponseMessage> DeterminarColector(string item)
        {
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));            //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Basic", Convert.ToBase64String(Encoding.UTF8.GetBytes(Settings.UserName + ":" + Settings.Password)));
            //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Basic", Convert.ToBase64String(Encoding.UTF8.GetBytes(Settings.UserName + ":" + Settings.Password)));
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Settings.token);
            client.DefaultRequestHeaders.Remove("credenciales");
            client.DefaultRequestHeaders.Add("credenciales", Settings.UserName + ":" + Settings.Password);
            string url = "http://" + Settings.IP + ":" + Settings.Puerto;
            //string url = "http://ofv.edenorte.com.do:8280/telemedidas";
            var uri = new Uri(string.Format(url + "/colector", string.Empty)); ;
            var json = JsonConvert.SerializeObject(item);
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            HttpResponseMessage response = null;
            response = await client.PutAsync(uri, content);
            return response;
        }
        public async void RestaurarToken()
        {
            var uri2 = new Uri(string.Format("http://" + Settings.IP + ":" + "", string.Empty));
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Basic", "");
            var requestContent = new FormUrlEncodedContent(new[] { new KeyValuePair<string, string>("text", ""), });
            var response2 = await client.PostAsync(uri2, requestContent);

            var content2 = await response2.Content.ReadAsStringAsync();
            Token token = JsonConvert.DeserializeObject<Token>(content2);
            Settings.token = token.access_token;
        }
        public async Task<HttpResponseMessage> CantVisitas(string brigada)
        {
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Settings.token);
            client.DefaultRequestHeaders.Remove("credenciales");
            string url = "http://" + Settings.IP + ":" + Settings.Puerto;
            //string url = "10.200.98.90:64413/api";
            var uri = new Uri(string.Format(url + "/cantVisitas%2F" + Settings.UserName, string.Empty));

            HttpResponseMessage response;
            do
            {
                response = await client.GetAsync(uri);
                if (response.StatusCode == HttpStatusCode.Unauthorized)
                {
                    RestaurarToken();
                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Settings.token);
                }
            } while (response.StatusCode == HttpStatusCode.Unauthorized);
            return response;
        }
        public async Task<HttpResponseMessage> VerificarCriterio(String nis)
        {
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));            //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Basic", Convert.ToBase64String(Encoding.UTF8.GetBytes(Settings.UserName + ":" + Settings.Password)));
            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Settings.token);
            client.DefaultRequestHeaders.Remove("credenciales");
            string url = "http://" + Settings.IP + ":" + Settings.Puerto;
            
            var uri = new Uri(string.Format(url + "/verificarCriterio%2F" + nis, string.Empty));


            HttpResponseMessage response;
            do
            {
                response = await client.GetAsync(uri);
                if (response.StatusCode == HttpStatusCode.Unauthorized)
                {
                    RestaurarToken();
                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Settings.token);
                }
            } while (response.StatusCode == HttpStatusCode.Unauthorized);
            return response;
        }
    }
}
