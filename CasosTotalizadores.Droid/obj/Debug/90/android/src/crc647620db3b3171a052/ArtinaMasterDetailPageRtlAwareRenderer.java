package crc647620db3b3171a052;


public class ArtinaMasterDetailPageRtlAwareRenderer
	extends crc64720bb2db43a66fe9.MasterDetailPageRenderer
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_closeDrawer:(I)V:GetCloseDrawer_IHandler\n" +
			"n_openDrawer:(I)V:GetOpenDrawer_IHandler\n" +
			"n_onMeasure:(II)V:GetOnMeasure_IIHandler\n" +
			"";
		mono.android.Runtime.register ("UXDivers.Artina.Shared.ArtinaMasterDetailPageRtlAwareRenderer, UXDivers.Artina.Shared.Droid", ArtinaMasterDetailPageRtlAwareRenderer.class, __md_methods);
	}


	public ArtinaMasterDetailPageRtlAwareRenderer (android.content.Context p0)
	{
		super (p0);
		if (getClass () == ArtinaMasterDetailPageRtlAwareRenderer.class) {
			mono.android.TypeManager.Activate ("UXDivers.Artina.Shared.ArtinaMasterDetailPageRtlAwareRenderer, UXDivers.Artina.Shared.Droid", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}


	public ArtinaMasterDetailPageRtlAwareRenderer (android.content.Context p0, android.util.AttributeSet p1)
	{
		super (p0, p1);
		if (getClass () == ArtinaMasterDetailPageRtlAwareRenderer.class) {
			mono.android.TypeManager.Activate ("UXDivers.Artina.Shared.ArtinaMasterDetailPageRtlAwareRenderer, UXDivers.Artina.Shared.Droid", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android", this, new java.lang.Object[] { p0, p1 });
		}
	}


	public ArtinaMasterDetailPageRtlAwareRenderer (android.content.Context p0, android.util.AttributeSet p1, int p2)
	{
		super (p0, p1, p2);
		if (getClass () == ArtinaMasterDetailPageRtlAwareRenderer.class) {
			mono.android.TypeManager.Activate ("UXDivers.Artina.Shared.ArtinaMasterDetailPageRtlAwareRenderer, UXDivers.Artina.Shared.Droid", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android:System.Int32, mscorlib", this, new java.lang.Object[] { p0, p1, p2 });
		}
	}


	public void closeDrawer (int p0)
	{
		n_closeDrawer (p0);
	}

	private native void n_closeDrawer (int p0);


	public void openDrawer (int p0)
	{
		n_openDrawer (p0);
	}

	private native void n_openDrawer (int p0);


	public void onMeasure (int p0, int p1)
	{
		n_onMeasure (p0, p1);
	}

	private native void n_onMeasure (int p0, int p1);

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
