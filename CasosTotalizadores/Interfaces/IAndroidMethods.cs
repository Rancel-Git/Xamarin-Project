using System.Threading.Tasks;
namespace CasosTotalizadores.Interfaces
{
    public interface IAndroidMethods
    {
        void CloseApp();
        void LongAlert(string message);
        void ShortAlert(string message);
        string AppVersion();
    }
}
