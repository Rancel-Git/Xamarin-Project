package crc643f46942d9dd1fff9;


public class FormsEditText
	extends android.widget.EditText
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onKeyPreIme:(ILandroid/view/KeyEvent;)Z:GetOnKeyPreIme_ILandroid_view_KeyEvent_Handler\n" +
			"n_requestFocus:(ILandroid/graphics/Rect;)Z:GetRequestFocus_ILandroid_graphics_Rect_Handler\n" +
			"";
		mono.android.Runtime.register ("Xamarin.Forms.Platform.Android.FormsEditText, Xamarin.Forms.Platform.Android", FormsEditText.class, __md_methods);
	}


	public FormsEditText (android.content.Context p0)
	{
		super (p0);
		if (getClass () == FormsEditText.class) {
			mono.android.TypeManager.Activate ("Xamarin.Forms.Platform.Android.FormsEditText, Xamarin.Forms.Platform.Android", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}


	public FormsEditText (android.content.Context p0, android.util.AttributeSet p1)
	{
		super (p0, p1);
		if (getClass () == FormsEditText.class) {
			mono.android.TypeManager.Activate ("Xamarin.Forms.Platform.Android.FormsEditText, Xamarin.Forms.Platform.Android", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android", this, new java.lang.Object[] { p0, p1 });
		}
	}


	public FormsEditText (android.content.Context p0, android.util.AttributeSet p1, int p2)
	{
		super (p0, p1, p2);
		if (getClass () == FormsEditText.class) {
			mono.android.TypeManager.Activate ("Xamarin.Forms.Platform.Android.FormsEditText, Xamarin.Forms.Platform.Android", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android:System.Int32, mscorlib", this, new java.lang.Object[] { p0, p1, p2 });
		}
	}


	public boolean onKeyPreIme (int p0, android.view.KeyEvent p1)
	{
		return n_onKeyPreIme (p0, p1);
	}

	private native boolean n_onKeyPreIme (int p0, android.view.KeyEvent p1);


	public boolean requestFocus (int p0, android.graphics.Rect p1)
	{
		return n_requestFocus (p0, p1);
	}

	private native boolean n_requestFocus (int p0, android.graphics.Rect p1);

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
