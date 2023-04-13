package crc647620db3b3171a052;


public class ArtinaNavigationPageRtlAwareRenderer
	extends crc64720bb2db43a66fe9.NavigationPageRenderer
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onLayout:(ZIIII)V:GetOnLayout_ZIIIIHandler\n" +
			"";
		mono.android.Runtime.register ("UXDivers.Artina.Shared.ArtinaNavigationPageRtlAwareRenderer, UXDivers.Artina.Shared.Droid", ArtinaNavigationPageRtlAwareRenderer.class, __md_methods);
	}


	public ArtinaNavigationPageRtlAwareRenderer (android.content.Context p0, android.util.AttributeSet p1, int p2)
	{
		super (p0, p1, p2);
		if (getClass () == ArtinaNavigationPageRtlAwareRenderer.class) {
			mono.android.TypeManager.Activate ("UXDivers.Artina.Shared.ArtinaNavigationPageRtlAwareRenderer, UXDivers.Artina.Shared.Droid", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android:System.Int32, mscorlib", this, new java.lang.Object[] { p0, p1, p2 });
		}
	}


	public ArtinaNavigationPageRtlAwareRenderer (android.content.Context p0, android.util.AttributeSet p1)
	{
		super (p0, p1);
		if (getClass () == ArtinaNavigationPageRtlAwareRenderer.class) {
			mono.android.TypeManager.Activate ("UXDivers.Artina.Shared.ArtinaNavigationPageRtlAwareRenderer, UXDivers.Artina.Shared.Droid", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android", this, new java.lang.Object[] { p0, p1 });
		}
	}


	public ArtinaNavigationPageRtlAwareRenderer (android.content.Context p0)
	{
		super (p0);
		if (getClass () == ArtinaNavigationPageRtlAwareRenderer.class) {
			mono.android.TypeManager.Activate ("UXDivers.Artina.Shared.ArtinaNavigationPageRtlAwareRenderer, UXDivers.Artina.Shared.Droid", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}


	public void onLayout (boolean p0, int p1, int p2, int p3, int p4)
	{
		n_onLayout (p0, p1, p2, p3, p4);
	}

	private native void n_onLayout (boolean p0, int p1, int p2, int p3, int p4);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
