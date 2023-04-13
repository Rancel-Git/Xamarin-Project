; ModuleID = 'obj\Debug\90\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\90\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [164 x i32] [
	i32 39109920, ; 0: Newtonsoft.Json.dll => 0x254c520 => 23
	i32 39852199, ; 1: Plugin.Permissions => 0x26018a7 => 30
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 68
	i32 103320845, ; 3: SocketIoClientDotNet => 0x6288d0d => 33
	i32 106911544, ; 4: DevExpress.Mobile.Core.Android.v17.1 => 0x65f5738 => 7
	i32 147393142, ; 5: Lottie.Forms.Droid.dll => 0x8c90a76 => 19
	i32 148395041, ; 6: Lottie.Forms.dll => 0x8d85421 => 18
	i32 154468378, ; 7: CasosTotalizadores.Droid => 0x935001a => 0
	i32 160529393, ; 8: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 49
	i32 166922606, ; 9: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 54
	i32 185010651, ; 10: System.Net.Http.Primitives => 0xb0709db => 37
	i32 205943382, ; 11: WebSocket4Net => 0xc467256 => 48
	i32 212497893, ; 12: Xamarin.Forms.Maps.Android => 0xcaa75e5 => 69
	i32 219130465, ; 13: Xamarin.Android.Support.v4 => 0xd0faa61 => 61
	i32 230752869, ; 14: Microsoft.CSharp.dll => 0xdc10265 => 20
	i32 237778303, ; 15: DevExpress.Mobile.Core.v17.1.dll => 0xe2c357f => 3
	i32 259954313, ; 16: Plugin.Permissions.Abstractions => 0xf7e9689 => 29
	i32 293914992, ; 17: Xamarin.Android.Support.Transition => 0x1184c970 => 60
	i32 319314094, ; 18: Xamarin.Forms.Maps => 0x130858ae => 70
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 79
	i32 331266987, ; 20: Xamarin.Android.Support.v7.MediaRouter.dll => 0x13bebbab => 64
	i32 388313361, ; 21: Xamarin.Android.Support.Animated.Vector.Drawable => 0x17253111 => 52
	i32 388947526, ; 22: DevExpress.Mobile.Grid.v17.1 => 0x172ede46 => 2
	i32 389971796, ; 23: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 55
	i32 442704954, ; 24: Lottie => 0x1a63243a => 17
	i32 465846621, ; 25: mscorlib => 0x1bc4415d => 22
	i32 469710990, ; 26: System.dll => 0x1bff388e => 35
	i32 475951716, ; 27: UXDivers.Artina.Shared.Base.Droid.dll => 0x1c5e7264 => 43
	i32 514659665, ; 28: Xamarin.Android.Support.Compat => 0x1ead1551 => 54
	i32 520798577, ; 29: FFImageLoading.Platform => 0x1f0ac171 => 13
	i32 539750087, ; 30: Xamarin.Android.Support.Design => 0x202beec7 => 57
	i32 571524804, ; 31: Xamarin.Android.Support.v7.RecyclerView => 0x2210c6c4 => 66
	i32 628654510, ; 32: UXDivers.Artina.Shared.Droid.dll => 0x257881ae => 45
	i32 679820142, ; 33: Plugin.Connectivity.Abstractions => 0x28853b6e => 24
	i32 689279727, ; 34: UXDivers.Artina.Shared.Base.Droid => 0x291592ef => 43
	i32 690569205, ; 35: System.Xml.Linq.dll => 0x29293ff5 => 39
	i32 692692150, ; 36: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 53
	i32 698030881, ; 37: FFImageLoading.Transformations => 0x299b1b21 => 14
	i32 767406065, ; 38: UXDivers.Artina.Shared.Base.dll => 0x2dbdaff1 => 42
	i32 882883187, ; 39: Xamarin.Android.Support.v4.dll => 0x349fba73 => 61
	i32 913382283, ; 40: Plugin.Settings => 0x36711b8b => 32
	i32 943604085, ; 41: Plugin.Permissions.Abstractions.dll => 0x383e4175 => 29
	i32 955402788, ; 42: Newtonsoft.Json => 0x38f24a24 => 23
	i32 957807352, ; 43: Plugin.CurrentActivity => 0x3916faf8 => 26
	i32 958213972, ; 44: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 59
	i32 974778368, ; 45: FormsViewGroup.dll => 0x3a19f000 => 15
	i32 1042160112, ; 46: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 72
	i32 1098259244, ; 47: System => 0x41761b2c => 35
	i32 1104002344, ; 48: Plugin.Media => 0x41cdbd28 => 28
	i32 1133560885, ; 49: DevExpress.Mobile.Grid.v17.1.dll => 0x4390c435 => 2
	i32 1137654822, ; 50: Plugin.Permissions.dll => 0x43cf3c26 => 30
	i32 1310647349, ; 51: WebSocket4Net.dll => 0x4e1ee435 => 48
	i32 1359785034, ; 52: Xamarin.Android.Support.Design.dll => 0x510cac4a => 57
	i32 1363798441, ; 53: DevExpress.Mobile.Core.Android.v17.1.dll => 0x5149e9a9 => 7
	i32 1365406463, ; 54: System.ServiceModel.Internals.dll => 0x516272ff => 80
	i32 1395363092, ; 55: Plugin.Settings.dll => 0x532b8d14 => 32
	i32 1445445088, ; 56: Xamarin.Android.Support.Fragment => 0x5627bde0 => 58
	i32 1448487292, ; 57: DevExpress.Mobile.Core.v17.1 => 0x5656297c => 3
	i32 1460219004, ; 58: Xamarin.Forms.Xaml => 0x57092c7c => 73
	i32 1488488195, ; 59: Toasts.Forms.Plugin.Droid => 0x58b88703 => 41
	i32 1530663695, ; 60: Xamarin.Forms.Maps.dll => 0x5b3c130f => 70
	i32 1532191201, ; 61: Toasts.Forms.Plugin.Droid.dll => 0x5b5361e1 => 41
	i32 1565248321, ; 62: Plugin.Settings.Abstractions => 0x5d4bcb41 => 31
	i32 1574652163, ; 63: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 56
	i32 1586189521, ; 64: CasosTotalizadores.dll => 0x5e8b54d1 => 6
	i32 1587447679, ; 65: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 49
	i32 1592978981, ; 66: System.Runtime.Serialization.dll => 0x5ef2ee25 => 5
	i32 1635482189, ; 67: FFImageLoading.Transformations.dll => 0x617b7a4d => 14
	i32 1639515021, ; 68: System.Net.Http.dll => 0x61b9038d => 1
	i32 1662014763, ; 69: Xamarin.Android.Support.Vector.Drawable => 0x6310552b => 67
	i32 1755190670, ; 70: UXDivers.Effects.Droid.dll => 0x689e158e => 47
	i32 1776026572, ; 71: System.Core.dll => 0x69dc03cc => 34
	i32 1793089559, ; 72: FFImageLoading.Forms.dll => 0x6ae06017 => 11
	i32 1840964413, ; 73: FFImageLoading.Forms => 0x6dbae33d => 11
	i32 1877418711, ; 74: Xamarin.Android.Support.v7.RecyclerView.dll => 0x6fe722d7 => 66
	i32 1878053835, ; 75: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 73
	i32 1881862856, ; 76: Xamarin.Forms.Maps.Android.dll => 0x702af2c8 => 69
	i32 1908813208, ; 77: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 75
	i32 1958255324, ; 78: Lottie.Forms.Droid => 0x74b89adc => 19
	i32 1978833500, ; 79: EngineIoClientDotNet => 0x75f29a5c => 9
	i32 2033194209, ; 80: Toasts.Forms.Plugin.Abstractions.dll => 0x793014e1 => 40
	i32 2048185678, ; 81: Plugin.Media.dll => 0x7a14d54e => 28
	i32 2126786730, ; 82: Xamarin.Forms.Platform.Android => 0x7ec430aa => 71
	i32 2129483829, ; 83: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 74
	i32 2166116741, ; 84: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 56
	i32 2201231467, ; 85: System.Net.Http => 0x8334206b => 1
	i32 2207954055, ; 86: UXDivers.Artina.Shared.Base => 0x839ab487 => 42
	i32 2316422618, ; 87: UXDivers.Artina.Shared.Droid => 0x8a11cdda => 45
	i32 2320410470, ; 88: UXDivers.Effects.Droid => 0x8a4ea766 => 47
	i32 2330457430, ; 89: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 55
	i32 2331329776, ; 90: Plugin.Media.Abstractions.dll => 0x8af544f0 => 27
	i32 2340826669, ; 91: FFImageLoading.dll => 0x8b862e2d => 10
	i32 2373288475, ; 92: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 58
	i32 2475788418, ; 93: Java.Interop.dll => 0x93918882 => 16
	i32 2562349572, ; 94: Microsoft.CSharp => 0x98ba5a04 => 20
	i32 2564416652, ; 95: DevExpress.Mobile.Grid.Android.v17.1 => 0x98d9e48c => 8
	i32 2582694618, ; 96: Lottie.dll => 0x99f0cada => 17
	i32 2629600743, ; 97: System.Net.Http.Extensions.dll => 0x9cbc85e7 => 36
	i32 2754271178, ; 98: Xamarin.Android.Support.v7.Palette => 0xa42ad7ca => 65
	i32 2766581644, ; 99: Xamarin.Forms.Core => 0xa4e6af8c => 68
	i32 2806986428, ; 100: Plugin.CurrentActivity.dll => 0xa74f36bc => 26
	i32 2819470561, ; 101: System.Xml.dll => 0xa80db4e1 => 38
	i32 2831100427, ; 102: DevExpress.Mobile.Grid.Android.v17.1.dll => 0xa8bf2a0b => 8
	i32 2847418871, ; 103: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 74
	i32 2873222696, ; 104: FFImageLoading => 0xab41e628 => 10
	i32 2905242038, ; 105: mscorlib.dll => 0xad2a79b6 => 22
	i32 2917284045, ; 106: CasosTotalizadores => 0xade238cd => 6
	i32 2922925221, ; 107: Xamarin.Android.Support.Vector.Drawable.dll => 0xae384ca5 => 67
	i32 3017076677, ; 108: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 77
	i32 3044182254, ; 109: FormsViewGroup => 0xb57288ee => 15
	i32 3058099980, ; 110: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 78
	i32 3068715062, ; 111: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 50
	i32 3092211740, ; 112: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 59
	i32 3111772706, ; 113: System.Runtime.Serialization => 0xb979e222 => 5
	i32 3194035187, ; 114: Xamarin.Android.Support.v7.MediaRouter => 0xbe611bf3 => 64
	i32 3204380047, ; 115: System.Data.dll => 0xbefef58f => 4
	i32 3230466174, ; 116: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 75
	i32 3247949154, ; 117: Mono.Security => 0xc197c562 => 81
	i32 3263631797, ; 118: Lottie.Forms => 0xc28711b5 => 18
	i32 3286136163, ; 119: UXDivers.Effects => 0xc3de7563 => 46
	i32 3317144872, ; 120: System.Data => 0xc5b79d28 => 4
	i32 3323545558, ; 121: SocketIoClientDotNet.dll => 0xc61947d6 => 33
	i32 3342024700, ; 122: Plugin.Connectivity.Abstractions.dll => 0xc7333ffc => 24
	i32 3354896898, ; 123: CasosTotalizadores.Droid.dll => 0xc7f7aa02 => 0
	i32 3366046733, ; 124: Plugin.Connectivity.dll => 0xc8a1cc0d => 25
	i32 3366347497, ; 125: Java.Interop => 0xc8a662e9 => 16
	i32 3379976980, ; 126: UXDivers.Effects.dll => 0xc9765b14 => 46
	i32 3404865022, ; 127: System.ServiceModel.Internals => 0xcaf21dfe => 80
	i32 3429136800, ; 128: System.Xml => 0xcc6479a0 => 38
	i32 3436376940, ; 129: Plugin.Media.Abstractions => 0xccd2f36c => 27
	i32 3439690031, ; 130: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 53
	i32 3476120550, ; 131: Mono.Android => 0xcf3163e6 => 21
	i32 3486231360, ; 132: Plugin.Settings.Abstractions.dll => 0xcfcbab40 => 31
	i32 3488778419, ; 133: FFImageLoading.Forms.Droid => 0xcff288b3 => 12
	i32 3494395880, ; 134: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 76
	i32 3498942916, ; 135: Xamarin.Android.Support.v7.CardView.dll => 0xd08da1c4 => 63
	i32 3509114376, ; 136: System.Xml.Linq => 0xd128d608 => 39
	i32 3522916314, ; 137: System.Net.Http.Extensions => 0xd1fb6fda => 36
	i32 3536029504, ; 138: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 71
	i32 3558747258, ; 139: EngineIoClientDotNet.dll => 0xd41e2c7a => 9
	i32 3632359727, ; 140: Xamarin.Forms.Platform => 0xd881692f => 72
	i32 3654449868, ; 141: FFImageLoading.Forms.Droid.dll => 0xd9d27acc => 12
	i32 3672681054, ; 142: Mono.Android.dll => 0xdae8aa5e => 21
	i32 3678221644, ; 143: Xamarin.Android.Support.v7.AppCompat => 0xdb3d354c => 62
	i32 3681174138, ; 144: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 50
	i32 3718463572, ; 145: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0xdda34054 => 52
	i32 3723212984, ; 146: UXDivers.Artina.Shared => 0xddebb8b8 => 44
	i32 3744636901, ; 147: UXDivers.Artina.Shared.dll => 0xdf329fe5 => 44
	i32 3756868177, ; 148: Toasts.Forms.Plugin.Abstractions => 0xdfed4251 => 40
	i32 3789524022, ; 149: Xamarin.Android.Support.v7.Palette.dll => 0xe1df8c36 => 65
	i32 3798658073, ; 150: System.Net.Http.Primitives.dll => 0xe26aec19 => 37
	i32 3829621856, ; 151: System.Numerics.dll => 0xe4436460 => 79
	i32 3862817207, ; 152: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 51
	i32 3874897629, ; 153: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 51
	i32 3883175360, ; 154: Xamarin.Android.Support.v7.AppCompat.dll => 0xe7748dc0 => 62
	i32 3914259587, ; 155: Plugin.Connectivity => 0xe94edc83 => 25
	i32 3967165417, ; 156: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 76
	i32 3970018735, ; 157: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 78
	i32 4105002889, ; 158: Mono.Security.dll => 0xf4ad5f89 => 81
	i32 4151237749, ; 159: System.Core => 0xf76edc75 => 34
	i32 4184283386, ; 160: FFImageLoading.Platform.dll => 0xf96718fa => 13
	i32 4216993138, ; 161: Xamarin.Android.Support.Transition.dll => 0xfb5a3572 => 60
	i32 4219003402, ; 162: Xamarin.Android.Support.v7.CardView => 0xfb78e20a => 63
	i32 4278134329 ; 163: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 77
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [164 x i32] [
	i32 23, i32 30, i32 68, i32 33, i32 7, i32 19, i32 18, i32 0, ; 0..7
	i32 49, i32 54, i32 37, i32 48, i32 69, i32 61, i32 20, i32 3, ; 8..15
	i32 29, i32 60, i32 70, i32 79, i32 64, i32 52, i32 2, i32 55, ; 16..23
	i32 17, i32 22, i32 35, i32 43, i32 54, i32 13, i32 57, i32 66, ; 24..31
	i32 45, i32 24, i32 43, i32 39, i32 53, i32 14, i32 42, i32 61, ; 32..39
	i32 32, i32 29, i32 23, i32 26, i32 59, i32 15, i32 72, i32 35, ; 40..47
	i32 28, i32 2, i32 30, i32 48, i32 57, i32 7, i32 80, i32 32, ; 48..55
	i32 58, i32 3, i32 73, i32 41, i32 70, i32 41, i32 31, i32 56, ; 56..63
	i32 6, i32 49, i32 5, i32 14, i32 1, i32 67, i32 47, i32 34, ; 64..71
	i32 11, i32 11, i32 66, i32 73, i32 69, i32 75, i32 19, i32 9, ; 72..79
	i32 40, i32 28, i32 71, i32 74, i32 56, i32 1, i32 42, i32 45, ; 80..87
	i32 47, i32 55, i32 27, i32 10, i32 58, i32 16, i32 20, i32 8, ; 88..95
	i32 17, i32 36, i32 65, i32 68, i32 26, i32 38, i32 8, i32 74, ; 96..103
	i32 10, i32 22, i32 6, i32 67, i32 77, i32 15, i32 78, i32 50, ; 104..111
	i32 59, i32 5, i32 64, i32 4, i32 75, i32 81, i32 18, i32 46, ; 112..119
	i32 4, i32 33, i32 24, i32 0, i32 25, i32 16, i32 46, i32 80, ; 120..127
	i32 38, i32 27, i32 53, i32 21, i32 31, i32 12, i32 76, i32 63, ; 128..135
	i32 39, i32 36, i32 71, i32 9, i32 72, i32 12, i32 21, i32 62, ; 136..143
	i32 50, i32 52, i32 44, i32 44, i32 40, i32 65, i32 37, i32 79, ; 144..151
	i32 51, i32 51, i32 62, i32 25, i32 76, i32 78, i32 81, i32 34, ; 152..159
	i32 13, i32 60, i32 63, i32 77 ; 160..163
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
