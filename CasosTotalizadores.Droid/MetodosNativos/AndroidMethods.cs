using Xamarin.Forms;
using Android.OS;
using CasosTotalizadores.Droid.MetodosNativos;
using CasosTotalizadores.Interfaces;
using Android.Widget;
using Android.Gms.Location;
using Android.Locations;
using System;
using System.Threading.Tasks;

[assembly: Dependency(typeof(AndroidMethods))]
namespace CasosTotalizadores.Droid.MetodosNativos
{
    class AndroidMethods : IAndroidMethods
    {
        public void CloseApp()
        {
            Process.KillProcess(Process.MyPid());
        }

        public void LongAlert(string message)
        {
            Toast.MakeText(Android.App.Application.Context, message, ToastLength.Long).Show();
        }

        public void ShortAlert(string message)
        {
            Toast.MakeText(Android.App.Application.Context, message, ToastLength.Short).Show();
        }
        public string AppVersion()
        {
            return Android.App.Application.Context.ApplicationContext.PackageManager.GetPackageInfo(Android.App.Application.Context.ApplicationContext.PackageName, 0).VersionName;
        }
    }
}