using Plugin.Settings;
using Plugin.Settings.Abstractions;
using System;
using Xamarin.Forms;

namespace CasosTotalizadores
{
    public enum Theme
	{
		Light,
		Dark,
		Enterprise,
		Custom
	}

	public static class Settings
	{

        private static ISettings AppSettings
        {
            get
            {
                return CrossSettings.Current;
            }
        }

        #region Setting Constants

        private const string SettingsKey = "settings_key";
        private static readonly string SettingsDefault = string.Empty;
        private const string IsLoggedInTokenKey = "isloggedid_key";
        private static readonly bool IsLoggedInTokenDefault = false;

        #endregion
        public static string UserName
        {
            get => AppSettings.GetValueOrDefault(nameof(UserName), string.Empty);
            set => AppSettings.AddOrUpdateValue(nameof(UserName), value);
        }
        public static string Nombre
        {
            get => AppSettings.GetValueOrDefault(nameof(Nombre), string.Empty);
            set => AppSettings.AddOrUpdateValue(nameof(Nombre), value);
        }
        public static int IdUsuario
        {
            get => AppSettings.GetValueOrDefault(nameof(IdUsuario), 0);
            set => AppSettings.AddOrUpdateValue(nameof(IdUsuario), value);
        }
        public static string IP
        {
            get => AppSettings.GetValueOrDefault(nameof(IP), "apptest.edeeste.com.do");
            set => AppSettings.AddOrUpdateValue(nameof(IP), value);
        }
        public static string Puerto
        {
            get => AppSettings.GetValueOrDefault(nameof(Puerto), "9090");
            set => AppSettings.AddOrUpdateValue(nameof(Puerto), value);
        }     
        public static string token
        {
            get => AppSettings.GetValueOrDefault(nameof(token), "");
            set => AppSettings.AddOrUpdateValue(nameof(token), value);
        }
        public static string Password
        {
            get => AppSettings.GetValueOrDefault(nameof(Password), string.Empty);
            set => AppSettings.AddOrUpdateValue(nameof(Password), value);
        }
        public static DateTime FechaLogin
        {
            get => AppSettings.GetValueOrDefault(nameof(FechaLogin), DateTime.Now.AddDays(-1));
            set => AppSettings.AddOrUpdateValue(nameof(FechaLogin), value);
        }
        public static bool Funciona
        {
            get => AppSettings.GetValueOrDefault(nameof(Funciona), true);
            set => AppSettings.AddOrUpdateValue(nameof(Funciona), value);
        }
        public static int CantVisitas
        {
            get => AppSettings.GetValueOrDefault(nameof(CantVisitas), -1);
            set => AppSettings.AddOrUpdateValue(nameof(CantVisitas), value);
        }
        public static string GeneralSettings
        {
            get
            {
                return AppSettings.GetValueOrDefault(SettingsKey, SettingsDefault);
            }
            set
            {
                AppSettings.AddOrUpdateValue(SettingsKey, value);
            }
        }

        public static bool IsLoggedIn
        {
            get { return AppSettings.GetValueOrDefault(IsLoggedInTokenKey, IsLoggedInTokenDefault); }
            set { AppSettings.AddOrUpdateValue(IsLoggedInTokenKey, value); }
        }
        public static void SetTheme(Theme theme)
		{
			Device.BeginInvokeOnMainThread(() =>
			{
				switch (theme)
				{
                    default:
                        Application.Current.Resources.MergedWith = typeof(GrialLightTheme);
						break;
				}
			});
		}
	}
}
