; ModuleID = 'obj\Debug\90\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\90\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [164 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 21
	i64 237357083753784807, ; 1: UXDivers.Effects.dll => 0x34b4302961125e7 => 46
	i64 295573609408109765, ; 2: UXDivers.Artina.Shared.Base => 0x41a16a1b9c01cc5 => 42
	i64 435170709725415398, ; 3: Xamarin.GooglePlayServices.Location => 0x60a097471d687e6 => 76
	i64 687654259221141486, ; 4: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 74
	i64 985332033409892329, ; 5: System.Net.Http.Primitives => 0xdac9a438d35bfe9 => 37
	i64 996343623809489702, ; 6: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 72
	i64 1000557547492888992, ; 7: Mono.Security.dll => 0xde2b1c9cba651a0 => 81
	i64 1090144629972078321, ; 8: Lottie => 0xf20f8c3df490ef1 => 17
	i64 1161742714612589476, ; 9: DevExpress.Mobile.Core.v17.1.dll => 0x101f56d800e1a3a4 => 3
	i64 1342439039765371018, ; 10: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 58
	i64 1400031058434376889, ; 11: Plugin.Permissions.dll => 0x136de8d4787ec4b9 => 30
	i64 1425944114962822056, ; 12: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 5
	i64 1731380447121279447, ; 13: Newtonsoft.Json => 0x18071957e9b889d7 => 23
	i64 1744702963312407042, ; 14: Xamarin.Android.Support.v7.AppCompat => 0x18366e19eeceb202 => 62
	i64 1860886102525309849, ; 15: Xamarin.Android.Support.v7.RecyclerView.dll => 0x19d3320d047b7399 => 66
	i64 1938067011858688285, ; 16: Xamarin.Android.Support.v4.dll => 0x1ae565add0bd691d => 61
	i64 1984538867944326539, ; 17: FFImageLoading.Platform.dll => 0x1b8a7f95fac7058b => 13
	i64 2133195048986300728, ; 18: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 23
	i64 2288578935829416975, ; 19: Lottie.Forms.Droid.dll => 0x1fc2aa6aae8dcc0f => 19
	i64 2592350477072141967, ; 20: System.Xml.dll => 0x23f9e10627330e8f => 38
	i64 2624866290265602282, ; 21: mscorlib.dll => 0x246d65fbde2db8ea => 22
	i64 2801558180824670388, ; 22: Plugin.CurrentActivity.dll => 0x26e1225279a4e0b4 => 26
	i64 2863324215353042462, ; 23: FFImageLoading.Forms => 0x27bc92340ce4661e => 11
	i64 2931479654149249931, ; 24: UXDivers.Effects.Droid.dll => 0x28aeb536bbd9db8b => 47
	i64 2941226221300907765, ; 25: Toasts.Forms.Plugin.Droid.dll => 0x28d155aa3cb47ef5 => 41
	i64 2960931600190307745, ; 26: Xamarin.Forms.Core => 0x2917579a49927da1 => 68
	i64 3022227708164871115, ; 27: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 59
	i64 3260998928894807349, ; 28: Lottie.Forms.dll => 0x2d41653f91b44d35 => 18
	i64 3411255996856937470, ; 29: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 75
	i64 3531994851595924923, ; 30: System.Numerics => 0x31042a9aade235bb => 79
	i64 3609787854626478660, ; 31: Plugin.CurrentActivity => 0x32188aeda587da44 => 26
	i64 3930575491621037311, ; 32: DevExpress.Mobile.Core.Android.v17.1.dll => 0x368c3595a4eda4ff => 7
	i64 4242335214925446848, ; 33: UXDivers.Artina.Shared.Base.Droid => 0x3adfcd66afc2fec0 => 43
	i64 4247996603072512073, ; 34: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 78
	i64 4264996749430196783, ; 35: Xamarin.Android.Support.Transition.dll => 0x3b304ff259fb8a2f => 60
	i64 4351791593134436142, ; 36: SocketIoClientDotNet => 0x3c64ab65ad4f2f2e => 33
	i64 4525561845656915374, ; 37: System.ServiceModel.Internals => 0x3ece06856b710dae => 80
	i64 4616232946718031335, ; 38: Toasts.Forms.Plugin.Droid => 0x401027683d953de7 => 41
	i64 4787698391273820780, ; 39: Plugin.Settings.Abstractions => 0x427152520f95d26c => 31
	i64 4805546890380114129, ; 40: Toasts.Forms.Plugin.Abstractions.dll => 0x42b0bb6f9896f8d1 => 40
	i64 4914391832395879945, ; 41: FFImageLoading.Transformations => 0x44336d5581099609 => 14
	i64 5142919913060024034, ; 42: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 71
	i64 5202753749449073649, ; 43: Plugin.Media => 0x4833e4f841be63f1 => 28
	i64 5256995213548036366, ; 44: Xamarin.Forms.Maps.Android.dll => 0x48f4994b4175a10e => 69
	i64 5439315836349573567, ; 45: Xamarin.Android.Support.Animated.Vector.Drawable.dll => 0x4b7c54ef36c5e9bf => 52
	i64 5484526334902621329, ; 46: Plugin.Permissions.Abstractions.dll => 0x4c1cf3a4b1255491 => 29
	i64 5507995362134886206, ; 47: System.Core.dll => 0x4c705499688c873e => 34
	i64 5767696078500135884, ; 48: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 53
	i64 5928947216509252318, ; 49: DevExpress.Mobile.Grid.Android.v17.1 => 0x5247da149c1332de => 8
	i64 6085203216496545422, ; 50: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 72
	i64 6086316965293125504, ; 51: FormsViewGroup.dll => 0x5476f10882baef80 => 15
	i64 6369273865436701816, ; 52: CasosTotalizadores.Droid.dll => 0x586434d5b288a478 => 0
	i64 6405879832841858445, ; 53: Xamarin.Android.Support.Vector.Drawable.dll => 0x58e641c4a660ad8d => 67
	i64 6437453774371681866, ; 54: Xamarin.Android.Support.v7.Palette => 0x59566e19c76bf64a => 65
	i64 6506787423624702956, ; 55: UXDivers.Effects.Droid => 0x5a4cc0aff6212bec => 47
	i64 6588599331800941662, ; 56: Xamarin.Android.Support.v4 => 0x5b6f682f335f045e => 61
	i64 6876862101832370452, ; 57: System.Xml.Linq => 0x5f6f85a57d108914 => 39
	i64 7141281584637745974, ; 58: Xamarin.GooglePlayServices.Maps.dll => 0x631aedc3dd5f1b36 => 77
	i64 7164916624638427275, ; 59: Xamarin.Android.Support.v7.MediaRouter.dll => 0x636ee5b570dd408b => 64
	i64 7229170831583627165, ; 60: FFImageLoading.Forms.Droid.dll => 0x64532c91cd28479d => 12
	i64 7240006720151143029, ; 61: DevExpress.Mobile.Grid.v17.1 => 0x6479abc0b60cc275 => 2
	i64 7447336822326045843, ; 62: Plugin.Media.Abstractions => 0x675a4161d96e2c93 => 27
	i64 7488575175965059935, ; 63: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 39
	i64 7494941431577095785, ; 64: DevExpress.Mobile.Grid.v17.1.dll => 0x68036185a982ae69 => 2
	i64 7635363394907363464, ; 65: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 68
	i64 7654504624184590948, ; 66: System.Net.Http => 0x6a3a4366801b8264 => 1
	i64 7735176074855944702, ; 67: Microsoft.CSharp => 0x6b58dda848e391fe => 20
	i64 7820441508502274321, ; 68: System.Data => 0x6c87ca1e14ff8111 => 4
	i64 7879037620440914030, ; 69: Xamarin.Android.Support.v7.AppCompat.dll => 0x6d57f6f88a51d86e => 62
	i64 8003488281596490781, ; 70: Xamarin.Android.Support.v7.MediaRouter => 0x6f121a30148f741d => 64
	i64 8101777744205214367, ; 71: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 53
	i64 8167236081217502503, ; 72: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 16
	i64 8385935383968044654, ; 73: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 51
	i64 8626175481042262068, ; 74: Java.Interop => 0x77b654e585b55834 => 16
	i64 8638972117149407195, ; 75: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 20
	i64 8695794572605806555, ; 76: Plugin.Permissions.Abstractions => 0x78adab176bf057db => 29
	i64 8742546945128219235, ; 77: EngineIoClientDotNet => 0x7953c420688b4263 => 9
	i64 9094004549068921173, ; 78: System.Net.Http.Extensions => 0x7e3464f48d0a1955 => 36
	i64 9114191852432800567, ; 79: FFImageLoading.dll => 0x7e7c1d3363043b37 => 10
	i64 9238306115887712111, ; 80: FFImageLoading.Forms.dll => 0x80350e773bce476f => 11
	i64 9439625609732276754, ; 81: Plugin.Connectivity.dll => 0x8300497a90c5c212 => 25
	i64 9475595603812259686, ; 82: Xamarin.Android.Support.Design => 0x838013ff707b9766 => 57
	i64 9662334977499516867, ; 83: System.Numerics.dll => 0x8617827802b0cfc3 => 79
	i64 9732461928540118312, ; 84: Plugin.Connectivity.Abstractions.dll => 0x8710a68f28a59d28 => 24
	i64 9808709177481450983, ; 85: Mono.Android.dll => 0x881f890734e555e7 => 21
	i64 9866412715007501892, ; 86: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 50
	i64 9875200773399460291, ; 87: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 74
	i64 9998632235833408227, ; 88: Mono.Security => 0x8ac2470b209ebae3 => 81
	i64 10038780035334861115, ; 89: System.Net.Http.dll => 0x8b50e941206af13b => 1
	i64 10775409704848971057, ; 90: Xamarin.Forms.Maps => 0x9589f20936d1d531 => 70
	i64 10820785028775375701, ; 91: EngineIoClientDotNet.dll => 0x962b26a717057355 => 9
	i64 10850923258212604222, ; 92: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 51
	i64 11023048688141570732, ; 93: System.Core => 0x98f9bc61168392ac => 34
	i64 11037814507248023548, ; 94: System.Xml => 0x992e31d0412bf7fc => 38
	i64 11059114502433985327, ; 95: UXDivers.Artina.Shared.Droid.dll => 0x9979de0bd7f2d32f => 45
	i64 11201462017695523848, ; 96: FFImageLoading.Transformations.dll => 0x9b73965b71c5a408 => 14
	i64 11376461258732682436, ; 97: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 54
	i64 11395105072750394936, ; 98: Xamarin.Android.Support.v7.CardView => 0x9e238bb09789fe38 => 63
	i64 11444370155346000636, ; 99: Xamarin.Forms.Maps.Android => 0x9ed292057b7afafc => 69
	i64 11783453153500368349, ; 100: CasosTotalizadores => 0xa3873c3631d88ddd => 6
	i64 11805766896659882188, ; 101: Plugin.Connectivity => 0xa3d68271607a60cc => 25
	i64 11834521489522935374, ; 102: Plugin.Media.Abstractions.dll => 0xa43caa97bdbdc64e => 27
	i64 11866610289935986454, ; 103: Xamarin.Android.Support.v7.Palette.dll => 0xa4aeab2fcba12f16 => 65
	i64 11974755358697558772, ; 104: UXDivers.Artina.Shared.Droid => 0xa62ee08dc35f92f4 => 45
	i64 12381879778851174729, ; 105: UXDivers.Artina.Shared.Base.Droid.dll => 0xabd5460e8e043949 => 43
	i64 12414299427252656003, ; 106: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 54
	i64 12559163541709922900, ; 107: Xamarin.Android.Support.v7.CardView.dll => 0xae4b1cb32ba82254 => 63
	i64 12586317382094358601, ; 108: CasosTotalizadores.dll => 0xaeab94f94e0f0849 => 6
	i64 12781667299182476634, ; 109: FFImageLoading.Forms.Droid => 0xb1619ab03cff7d5a => 12
	i64 12952608645614506925, ; 110: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 56
	i64 13107317102281414992, ; 111: SocketIoClientDotNet.dll => 0xb5e68b757fe2d950 => 33
	i64 13218206745228197262, ; 112: DevExpress.Mobile.Grid.Android.v17.1.dll => 0xb770810070ffbd8e => 8
	i64 13358059602087096138, ; 113: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 58
	i64 13370592475155966277, ; 114: System.Runtime.Serialization => 0xb98de304062ea945 => 5
	i64 13643785327914841093, ; 115: Plugin.Media.dll => 0xbd587677c60cf405 => 28
	i64 13647894001087880694, ; 116: System.Data.dll => 0xbd670f48cb071df6 => 4
	i64 13967638549803255703, ; 117: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 71
	i64 14102079389910076542, ; 118: UXDivers.Artina.Shared => 0xc3b4a67d35f28c7e => 44
	i64 14267242366184657376, ; 119: Toasts.Forms.Plugin.Abstractions => 0xc5ff6d5748d711e0 => 40
	i64 14300010523768028048, ; 120: Lottie.dll => 0xc673d7ce818a7b90 => 17
	i64 14369828458497533121, ; 121: Xamarin.Android.Support.Vector.Drawable => 0xc76be2d9300b64c1 => 67
	i64 14397247796655778119, ; 122: UXDivers.Artina.Shared.Base.dll => 0xc7cd4c9756f16947 => 42
	i64 14400856865250966808, ; 123: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 55
	i64 14573042884976692136, ; 124: UXDivers.Effects => 0xca3dd94ae791cba8 => 46
	i64 14678510994762383812, ; 125: Xamarin.GooglePlayServices.Location.dll => 0xcbb48bfaca7a41c4 => 76
	i64 15037088180954523232, ; 126: System.Net.Http.Extensions.dll => 0xd0ae7807da04e660 => 36
	i64 15133318570858120619, ; 127: System.Net.Http.Primitives.dll => 0xd204590f78d205ab => 37
	i64 15188640517174936311, ; 128: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 49
	i64 15246441518555807158, ; 129: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 49
	i64 15418891414777631748, ; 130: Xamarin.Android.Support.Transition => 0xd5fae80c88241404 => 60
	i64 15457813392950723921, ; 131: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 59
	i64 15609085926864131306, ; 132: System.dll => 0xd89e9cf3334914ea => 35
	i64 15810740023422282496, ; 133: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 73
	i64 15930129725311349754, ; 134: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 78
	i64 16154507427712707110, ; 135: System => 0xe03056ea4e39aa26 => 35
	i64 16257317422869950876, ; 136: DevExpress.Mobile.Core.Android.v17.1 => 0xe19d980fa6eeb19c => 7
	i64 16381405407414385978, ; 137: Plugin.Settings => 0xe356716cf698fd3a => 32
	i64 16833383113903931215, ; 138: mscorlib => 0xe99c30c1484d7f4f => 22
	i64 16895806301542741427, ; 139: Plugin.Permissions => 0xea79f6503d42f5b3 => 30
	i64 16932527889823454152, ; 140: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 56
	i64 16973888863008331153, ; 141: Plugin.Settings.dll => 0xeb8f5dfd48921591 => 32
	i64 16989203637347086287, ; 142: WebSocket4Net => 0xebc5c6b20cd8efcf => 48
	i64 17009591894298689098, ; 143: Xamarin.Android.Support.Animated.Vector.Drawable => 0xec0e35b50a097e4a => 52
	i64 17124705692820578889, ; 144: Lottie.Forms => 0xeda72d18d7ae2249 => 18
	i64 17146377013933841195, ; 145: DevExpress.Mobile.Core.v17.1 => 0xedf42b0c7c731b2b => 3
	i64 17172272284620379844, ; 146: Lottie.Forms.Droid => 0xee502aa9071556c4 => 19
	i64 17238569155936077394, ; 147: Plugin.Connectivity.Abstractions => 0xef3bb3503f934652 => 24
	i64 17391628571487352960, ; 148: Plugin.Settings.Abstractions.dll => 0xf15b7a0a7d09b880 => 31
	i64 17428701562824544279, ; 149: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 55
	i64 17643123953373031521, ; 150: FFImageLoading => 0xf4d8f7c220fc2c61 => 10
	i64 17670798863783126065, ; 151: UXDivers.Artina.Shared.dll => 0xf53b49f1552b6431 => 44
	i64 17760961058993581169, ; 152: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 50
	i64 17816041456001989629, ; 153: Xamarin.Forms.Maps.dll => 0xf73f4b4f90a1bbfd => 70
	i64 17861688616034315864, ; 154: CasosTotalizadores.Droid => 0xf7e17729375d2e58 => 0
	i64 17882897186074144999, ; 155: FormsViewGroup => 0xf82cd03e3ac830e7 => 15
	i64 17892495832318972303, ; 156: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 73
	i64 17936749993673010118, ; 157: Xamarin.Android.Support.Design.dll => 0xf8ec231615deabc6 => 57
	i64 17947624217716767869, ; 158: FFImageLoading.Platform => 0xf912c522ab34bc7d => 13
	i64 17969331831154222830, ; 159: Xamarin.GooglePlayServices.Maps => 0xf95fe418471126ee => 77
	i64 17986907704309214542, ; 160: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 75
	i64 18090425465832348288, ; 161: Xamarin.Android.Support.v7.RecyclerView => 0xfb0e1a1d2e9e1a80 => 66
	i64 18129453464017766560, ; 162: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 80
	i64 18239004110448304878 ; 163: WebSocket4Net.dll => 0xfd1df59aa42922ee => 48
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [164 x i32] [
	i32 21, i32 46, i32 42, i32 76, i32 74, i32 37, i32 72, i32 81, ; 0..7
	i32 17, i32 3, i32 58, i32 30, i32 5, i32 23, i32 62, i32 66, ; 8..15
	i32 61, i32 13, i32 23, i32 19, i32 38, i32 22, i32 26, i32 11, ; 16..23
	i32 47, i32 41, i32 68, i32 59, i32 18, i32 75, i32 79, i32 26, ; 24..31
	i32 7, i32 43, i32 78, i32 60, i32 33, i32 80, i32 41, i32 31, ; 32..39
	i32 40, i32 14, i32 71, i32 28, i32 69, i32 52, i32 29, i32 34, ; 40..47
	i32 53, i32 8, i32 72, i32 15, i32 0, i32 67, i32 65, i32 47, ; 48..55
	i32 61, i32 39, i32 77, i32 64, i32 12, i32 2, i32 27, i32 39, ; 56..63
	i32 2, i32 68, i32 1, i32 20, i32 4, i32 62, i32 64, i32 53, ; 64..71
	i32 16, i32 51, i32 16, i32 20, i32 29, i32 9, i32 36, i32 10, ; 72..79
	i32 11, i32 25, i32 57, i32 79, i32 24, i32 21, i32 50, i32 74, ; 80..87
	i32 81, i32 1, i32 70, i32 9, i32 51, i32 34, i32 38, i32 45, ; 88..95
	i32 14, i32 54, i32 63, i32 69, i32 6, i32 25, i32 27, i32 65, ; 96..103
	i32 45, i32 43, i32 54, i32 63, i32 6, i32 12, i32 56, i32 33, ; 104..111
	i32 8, i32 58, i32 5, i32 28, i32 4, i32 71, i32 44, i32 40, ; 112..119
	i32 17, i32 67, i32 42, i32 55, i32 46, i32 76, i32 36, i32 37, ; 120..127
	i32 49, i32 49, i32 60, i32 59, i32 35, i32 73, i32 78, i32 35, ; 128..135
	i32 7, i32 32, i32 22, i32 30, i32 56, i32 32, i32 48, i32 52, ; 136..143
	i32 18, i32 3, i32 19, i32 24, i32 31, i32 55, i32 10, i32 44, ; 144..151
	i32 50, i32 70, i32 0, i32 15, i32 73, i32 57, i32 13, i32 77, ; 152..159
	i32 75, i32 66, i32 80, i32 48 ; 160..163
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
