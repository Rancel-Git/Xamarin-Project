package crc646d6ab8e86420b66d;


public class HTMLViewRenderer_NativeWebView
	extends android.webkit.WebView
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("DevExpress.Mobile.DataGrid.Android.HTMLViewRenderer+NativeWebView, DevExpress.Mobile.Grid.Android.v17.1", HTMLViewRenderer_NativeWebView.class, __md_methods);
	}


	public HTMLViewRenderer_NativeWebView (android.content.Context p0)
	{
		super (p0);
		if (getClass () == HTMLViewRenderer_NativeWebView.class) {
			mono.android.TypeManager.Activate ("DevExpress.Mobile.DataGrid.Android.HTMLViewRenderer+NativeWebView, DevExpress.Mobile.Grid.Android.v17.1", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}


	public HTMLViewRenderer_NativeWebView (android.content.Context p0, android.util.AttributeSet p1)
	{
		super (p0, p1);
		if (getClass () == HTMLViewRenderer_NativeWebView.class) {
			mono.android.TypeManager.Activate ("DevExpress.Mobile.DataGrid.Android.HTMLViewRenderer+NativeWebView, DevExpress.Mobile.Grid.Android.v17.1", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android", this, new java.lang.Object[] { p0, p1 });
		}
	}


	public HTMLViewRenderer_NativeWebView (android.content.Context p0, android.util.AttributeSet p1, int p2)
	{
		super (p0, p1, p2);
		if (getClass () == HTMLViewRenderer_NativeWebView.class) {
			mono.android.TypeManager.Activate ("DevExpress.Mobile.DataGrid.Android.HTMLViewRenderer+NativeWebView, DevExpress.Mobile.Grid.Android.v17.1", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android:System.Int32, mscorlib", this, new java.lang.Object[] { p0, p1, p2 });
		}
	}

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
