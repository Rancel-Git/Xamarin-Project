using CasosTotalizadores.Entidades;
using CasosTotalizadores.Interfaces;
using CasosTotalizadores.Views;
using Plugin.Media;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace CasosTotalizadores
{
    class ImageProcess
    {
        string url = "http://" + Settings.IP + ":" + Settings.Puerto;
        public string error { get; set; } // to update error in fronted 
        public byte[] imgraw { get; set; } // contains Byte[] format Image to be sent to Watson
        public ImageSource img { get; set; }

        public async Task<Stream> GetImage()
        {
            if (!CrossMedia.Current.IsCameraAvailable || !CrossMedia.Current.IsPickPhotoSupported)
            {
                //return new Stream();
            }
            var file = await CrossMedia.Current.TakePhotoAsync(new Plugin.Media.Abstractions.StoreCameraMediaOptions
            {
                Directory = "Sample",
                Name = "test.jpg"
            });
            if (file == null)
                return null;
            var imgrawtemp = new BinaryReader(file.GetStream()).ReadBytes((int)file.GetStream().Length);
            return file.GetStream();
        }
        public async Task<string> ProcessImage(Stream img, TOTALIZADOR totalizador)
        {
            FOTOS_ASOCIACIONES nuevaFoto = new FOTOS_ASOCIACIONES();
            try
            {
                double lat = 0;
                double lng = 0;
                ILocation loc = DependencyService.Get<ILocation>();
                loc.locationObtained += (object ss, ILocationEventArgs ee) =>
                {
                    lat = ee.lat;
                    lng = ee.lng;
                };
                loc.ObtainMyLocation();
                loc = null;
                var multiPartContent = new MultipartFormDataContent();
                string nombreImagen = totalizador.NUM_MEDIDOR + "_" + (DateTime.Now).ToString("dd-MM-yyyy_HH-mm-ss") + ".jpg";
                multiPartContent.Add(new StreamContent(img), "File", nombreImagen);

                var keyValuePair = new KeyValuePair<string, string>("ClientDocs", "ClientDocs");
                var sector = new KeyValuePair<string, string>("Sector", "totalizador.SECTOR");
                multiPartContent.Add(new StringContent(keyValuePair.Value), string.Format("\"{0}\"", keyValuePair.Key));
                multiPartContent.Add(new StringContent(sector.Value), string.Format("\"{0}\"", sector.Key));
                using (var client = new HttpClient())
                {
                    client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));            //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Basic", Convert.ToBase64String(Encoding.UTF8.GetBytes(Settings.UserName + ":" + Settings.Password)));
                    client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", Settings.token);
                    client.DefaultRequestHeaders.Remove("credenciales");
                    client.DefaultRequestHeaders.Add("credenciales", Settings.UserName + ":" + Settings.Password);
                    var uri = new Uri(string.Format(url+"/DocumentUpload", string.Empty));
                    var response = await client.PostAsync(uri, multiPartContent);
                    nuevaFoto.ID_TOTALIZADOR = totalizador.ID;
                    //nuevaFoto.TOTALIZADOR = totalizador;
                    nuevaFoto.LONGITUD = Convert.ToString(lng);
                    nuevaFoto.LATITUD = Convert.ToString(lat);
                    nuevaFoto.NOMBRE = nombreImagen;
                    nuevaFoto.USUARIO_CARGA = Settings.IdUsuario;
                    nuevaFoto.FECHA_CARGA = DateTime.Now;
                    await App.FotosManager.SaveTaskAsync(nuevaFoto, true);
                    if (response.IsSuccessStatusCode == true)
                    {
                        
                        return await HandleResponseAsync(response);
                    }
                    else
                    {
                        return null;
                    }
                }
            }
            catch (Exception)
            {
                return null;
            }
        }
        private async Task<string> HandleResponseAsync(HttpResponseMessage response)
        {
            string bb = await response.Content.ReadAsStringAsync().ConfigureAwait(false);
            return bb; // this bb will contain string in json format!
        }
    }
}
