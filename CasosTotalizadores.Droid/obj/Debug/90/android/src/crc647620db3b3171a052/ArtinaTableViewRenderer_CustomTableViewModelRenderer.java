package crc647620db3b3171a052;


public class ArtinaTableViewRenderer_CustomTableViewModelRenderer
	extends crc643f46942d9dd1fff9.TableViewModelRenderer
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_getView:(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;:GetGetView_ILandroid_view_View_Landroid_view_ViewGroup_Handler\n" +
			"";
		mono.android.Runtime.register ("UXDivers.Artina.Shared.ArtinaTableViewRenderer+CustomTableViewModelRenderer, UXDivers.Artina.Shared.Droid", ArtinaTableViewRenderer_CustomTableViewModelRenderer.class, __md_methods);
	}


	public ArtinaTableViewRenderer_CustomTableViewModelRenderer ()
	{
		super ();
		if (getClass () == ArtinaTableViewRenderer_CustomTableViewModelRenderer.class) {
			mono.android.TypeManager.Activate ("UXDivers.Artina.Shared.ArtinaTableViewRenderer+CustomTableViewModelRenderer, UXDivers.Artina.Shared.Droid", "", this, new java.lang.Object[] {  });
		}
	}

	public ArtinaTableViewRenderer_CustomTableViewModelRenderer (android.content.Context p0)
	{
		super ();
		if (getClass () == ArtinaTableViewRenderer_CustomTableViewModelRenderer.class) {
			mono.android.TypeManager.Activate ("UXDivers.Artina.Shared.ArtinaTableViewRenderer+CustomTableViewModelRenderer, UXDivers.Artina.Shared.Droid", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}


	public android.view.View getView (int p0, android.view.View p1, android.view.ViewGroup p2)
	{
		return n_getView (p0, p1, p2);
	}

	private native android.view.View n_getView (int p0, android.view.View p1, android.view.ViewGroup p2);

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
