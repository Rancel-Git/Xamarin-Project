using System;

using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Android.OS;
using Android.Graphics.Drawables;
using Xamarin.Forms.Platform.Android;
using Xamarin.Forms;
using System.Threading.Tasks;
using Android.Gms.Common;
using Android.Gms.Location;
using UXDivers.Artina.Shared;

using FFImageLoading.Forms.Droid;
using Java.Util;


namespace CasosTotalizadores.Droid
{
    //https://developer.android.com/guide/topics/manifest/activity-element.html
    [Activity(
		Label = "Casos Totalizadores",
        Icon = "@drawable/icon",
        Theme = "@style/Theme.Splash",
        MainLauncher = true,
        LaunchMode = LaunchMode.SingleTask,
		ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Locale | ConfigChanges.LayoutDirection,
        ScreenOrientation = ScreenOrientation.Portrait
        )
    ]
    public class MainActivity : FormsAppCompatActivity
    {
		private Locale _locale;
        protected override void OnCreate(Bundle bundle)
        {
			// Changing to App's theme since we are OnCreate and we are ready to 
			// "hide" the splash
			base.Window.RequestFeature(WindowFeatures.ActionBar);
			base.SetTheme(Resource.Style.AppTheme);
            DevExpress.Mobile.Forms.Init();
            Xamarin.FormsMaps.Init(this, bundle);
            FormsAppCompatActivity.ToolbarResource = Resource.Layout.Toolbar;
            FormsAppCompatActivity.TabLayoutResource = Resource.Layout.Tabs;

			base.OnCreate(bundle);

			// Initializing FFImageLoading
			CachedImageRenderer.Init();

			global::Xamarin.Forms.Forms.Init(this, bundle);
			UXDivers.Artina.Shared.GrialKit.Init(this, "CasosTotalizadores.Droid.GrialLicense");
			
            FormsHelper.ForceLoadingAssemblyContainingType(typeof(UXDivers.Effects.Effects));

			_locale = Resources.Configuration.Locale;

			LoadApplication(new App());
        }

        public override void OnConfigurationChanged(Android.Content.Res.Configuration newConfig)
        {
			base.OnConfigurationChanged(newConfig);

			GrialKit.NotifyConfigurationChanged(newConfig);

			if ((int)Build.VERSION.SdkInt <= 19 &&
			    !_locale.Equals(newConfig.Locale))
			{
				// Need to recreate the activity when locale has changed for APIs 18 and 19 
				// as changes in ConfigChanges.Locale brake images used in the app
				Recreate();
			}
        }

	}
}

