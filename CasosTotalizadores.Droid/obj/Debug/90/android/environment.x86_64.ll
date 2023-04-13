; ModuleID = 'obj\Debug\90\android\environment.x86_64.ll'
source_filename = "obj\Debug\90\android\environment.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.ApplicationConfig = type {
	i8,; bool uses_mono_llvm
	i8,; bool uses_mono_aot
	i8,; bool aot_lazy_load
	i8,; bool uses_assembly_preload
	i8,; bool is_a_bundled_app
	i8,; bool broken_exception_transitions
	i8,; bool instant_run_enabled
	i8,; bool jni_add_native_method_registration_attribute_present
	i8,; bool have_runtime_config_blob
	i8,; bool have_assemblies_blob
	i8,; bool marshal_methods_enabled
	i8,; uint8_t bound_stream_io_exception_type
	i32,; uint32_t package_naming_policy
	i32,; uint32_t environment_variable_count
	i32,; uint32_t system_property_count
	i32,; uint32_t number_of_assemblies_in_apk
	i32,; uint32_t bundled_assembly_name_width
	i32,; uint32_t number_of_assembly_store_files
	i32,; uint32_t number_of_dso_cache_entries
	i32,; uint32_t android_runtime_jnienv_class_token
	i32,; uint32_t jnienv_initialize_method_token
	i32,; uint32_t jnienv_registerjninatives_method_token
	i32,; uint32_t jni_remapping_replacement_type_count
	i32,; uint32_t jni_remapping_replacement_method_index_entry_count
	i32,; uint32_t mono_components_mask
	i8*; char* android_package_name
}

%struct.AssemblyStoreAssemblyDescriptor = type {
	i32,; uint32_t data_offset
	i32,; uint32_t data_size
	i32,; uint32_t debug_data_offset
	i32,; uint32_t debug_data_size
	i32,; uint32_t config_data_offset
	i32; uint32_t config_data_size
}

%struct.AssemblyStoreSingleAssemblyRuntimeData = type {
	i8*,; uint8_t* image_data
	i8*,; uint8_t* debug_info_data
	i8*,; uint8_t* config_data
	%struct.AssemblyStoreAssemblyDescriptor*; AssemblyStoreAssemblyDescriptor* descriptor
}

%struct.AssemblyStoreRuntimeData = type {
	i8*,; uint8_t* data_start
	i32,; uint32_t assembly_count
	%struct.AssemblyStoreAssemblyDescriptor*; AssemblyStoreAssemblyDescriptor* assemblies
}

%struct.XamarinAndroidBundledAssembly = type {
	i32,; int32_t apk_fd
	i32,; uint32_t data_offset
	i32,; uint32_t data_size
	i8*,; uint8_t* data
	i32,; uint32_t name_length
	i8*; char* name
}

%struct.DSOCacheEntry = type {
	i64,; uint64_t hash
	i8,; bool ignore
	i8*,; char* name
	i8*; void* handle
}

@format_tag = local_unnamed_addr constant i64 385281960275288, align 8
@__mono_aot_mode_name = internal constant [7 x i8] c"normal\00", align 1
@mono_aot_mode_name = local_unnamed_addr constant i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__mono_aot_mode_name, i64 0, i64 0), align 8

; app_environment_variables
@__app_environment_variables_n_0.0 = internal constant [15 x i8] c"MONO_GC_PARAMS\00", align 1
@__app_environment_variables_v_0.1 = internal constant [21 x i8] c"major=marksweep-conc\00", align 16
@__app_environment_variables_n_1.2 = internal constant [15 x i8] c"MONO_LOG_LEVEL\00", align 1
@__app_environment_variables_v_1.3 = internal constant [5 x i8] c"info\00", align 1
@__app_environment_variables_n_2.4 = internal constant [17 x i8] c"XAMARIN_BUILD_ID\00", align 16
@__app_environment_variables_v_2.5 = internal constant [37 x i8] c"4f94d59e-f4e3-4bee-9065-f1b09514e90e\00", align 16
@__app_environment_variables_n_3.6 = internal constant [28 x i8] c"XA_HTTP_CLIENT_HANDLER_TYPE\00", align 16
@__app_environment_variables_v_3.7 = internal constant [51 x i8] c"System.Net.Http.HttpClientHandler, System.Net.Http\00", align 16
@__app_environment_variables_n_4.8 = internal constant [16 x i8] c"XA_TLS_PROVIDER\00", align 16
@__app_environment_variables_v_4.9 = internal constant [5 x i8] c"btls\00", align 1
@__app_environment_variables_n_5.10 = internal constant [29 x i8] c"__XA_PACKAGE_NAMING_POLICY__\00", align 16
@__app_environment_variables_v_5.11 = internal constant [15 x i8] c"LowercaseCrc64\00", align 1

@app_environment_variables = local_unnamed_addr constant [12 x i8*] [
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_n_0.0, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__app_environment_variables_v_0.1, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_n_1.2, i32 0, i32 0),
	i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__app_environment_variables_v_1.3, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__app_environment_variables_n_2.4, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__app_environment_variables_v_2.5, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__app_environment_variables_n_3.6, i32 0, i32 0),
	i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__app_environment_variables_v_3.7, i32 0, i32 0),
	i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__app_environment_variables_n_4.8, i32 0, i32 0),
	i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__app_environment_variables_v_4.9, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__app_environment_variables_n_5.10, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_v_5.11, i32 0, i32 0)
], align 16

; app_system_properties
@app_system_properties = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__ApplicationConfig_android_package_name.0 = internal constant [23 x i8] c"com.casostotalizadores\00", align 16

; application_config
@application_config = local_unnamed_addr constant %struct.ApplicationConfig {
	i8 0, ; uses_mono_llvm
	i8 1, ; uses_mono_aot
	i8 0, ; aot_lazy_load
	i8 1, ; uses_assembly_preload
	i8 0, ; is_a_bundled_app
	i8 0, ; broken_exception_transitions
	i8 0, ; instant_run_enabled
	i8 0, ; jni_add_native_method_registration_attribute_present
	i8 0, ; have_runtime_config_blob
	i8 0, ; have_assemblies_blob
	i8 0, ; marshal_methods_enabled
	i8 1, ; bound_stream_io_exception_type
	i32 3, ; package_naming_policy
	i32 12, ; environment_variable_count
	i32 0, ; system_property_count
	i32 82, ; number_of_assemblies_in_apk
	i32 63, ; bundled_assembly_name_width
	i32 2, ; number_of_assembly_store_files
	i32 520, ; number_of_dso_cache_entries
	i32 33555370, ; android_runtime_jnienv_class_token
	i32 100674088, ; jnienv_initialize_method_token
	i32 100674087, ; jnienv_registerjninatives_method_token
	i32 0, ; jni_remapping_replacement_type_count
	i32 0, ; jni_remapping_replacement_method_index_entry_count
	i32 0, ; mono_components_mask
	i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__ApplicationConfig_android_package_name.0, i32 0, i32 0); android_package_name
}, align 8

@__DSOCacheEntry_name.1 = internal constant [28 x i8] c"libaot-Mono.Security.dll.so\00", align 16
@__DSOCacheEntry_name.2 = internal constant [38 x i8] c"libaot-FFImageLoading.Platform.dll.so\00", align 16
@__DSOCacheEntry_name.3 = internal constant [35 x i8] c"libaot-FFImageLoading.Forms.dll.so\00", align 16
@__DSOCacheEntry_name.4 = internal constant [43 x i8] c"libaot-DevExpress.Mobile.Core.v17.1.dll.so\00", align 16
@__DSOCacheEntry_name.5 = internal constant [47 x i8] c"libaot-Xamarin.GooglePlayServices.Tasks.dll.so\00", align 16
@__DSOCacheEntry_name.6 = internal constant [46 x i8] c"libaot-Xamarin.GooglePlayServices.Base.dll.so\00", align 16
@__DSOCacheEntry_name.7 = internal constant [27 x i8] c"libaot-Mono.Android.dll.so\00", align 16
@__DSOCacheEntry_name.8 = internal constant [44 x i8] c"libaot-System.ServiceModel.Internals.dll.so\00", align 16
@__DSOCacheEntry_name.9 = internal constant [41 x i8] c"libaot-System.Net.Http.Primitives.dll.so\00", align 16
@__DSOCacheEntry_name.10 = internal constant [41 x i8] c"libaot-FFImageLoading.Forms.Droid.dll.so\00", align 16
@__DSOCacheEntry_name.11 = internal constant [42 x i8] c"libaot-UXDivers.Artina.Shared.Base.dll.so\00", align 16
@__DSOCacheEntry_name.12 = internal constant [30 x i8] c"libaot-Newtonsoft.Json.dll.so\00", align 16
@__DSOCacheEntry_name.13 = internal constant [50 x i8] c"libaot-Xamarin.Android.Support.v7.CardView.dll.so\00", align 16
@__DSOCacheEntry_name.14 = internal constant [50 x i8] c"libaot-Xamarin.GooglePlayServices.Location.dll.so\00", align 16
@__DSOCacheEntry_name.15 = internal constant [51 x i8] c"libaot-Xamarin.Android.Support.Media.Compat.dll.so\00", align 16
@__DSOCacheEntry_name.16 = internal constant [23 x i8] c"libaot-mscorlib.dll.so\00", align 16
@__DSOCacheEntry_name.17 = internal constant [31 x i8] c"libaot-Microsoft.CSharp.dll.so\00", align 16
@__DSOCacheEntry_name.18 = internal constant [33 x i8] c"libaot-Xamarin.Forms.Core.dll.so\00", align 16
@__DSOCacheEntry_name.19 = internal constant [43 x i8] c"libaot-UXDivers.Artina.Shared.Droid.dll.so\00", align 16
@__DSOCacheEntry_name.20 = internal constant [26 x i8] c"libaot-System.Data.dll.so\00", align 16
@__DSOCacheEntry_name.21 = internal constant [46 x i8] c"libaot-Xamarin.GooglePlayServices.Maps.dll.so\00", align 16
@__DSOCacheEntry_name.22 = internal constant [26 x i8] c"libaot-System.Core.dll.so\00", align 16
@__DSOCacheEntry_name.23 = internal constant [63 x i8] c"libaot-Xamarin.Android.Support.Animated.Vector.Drawable.dll.so\00", align 16
@__DSOCacheEntry_name.24 = internal constant [45 x i8] c"libaot-FFImageLoading.Transformations.dll.so\00", align 16
@__DSOCacheEntry_name.25 = internal constant [41 x i8] c"libaot-Xamarin.Forms.Maps.Android.dll.so\00", align 16
@__DSOCacheEntry_name.26 = internal constant [27 x i8] c"libaot-Java.Interop.dll.so\00", align 16
@__DSOCacheEntry_name.27 = internal constant [37 x i8] c"libaot-Xamarin.Forms.Platform.dll.so\00", align 16
@__DSOCacheEntry_name.28 = internal constant [47 x i8] c"libaot-Xamarin.Android.Arch.Core.Common.dll.so\00", align 16
@__DSOCacheEntry_name.29 = internal constant [21 x i8] c"libaot-Lottie.dll.so\00", align 16
@__DSOCacheEntry_name.30 = internal constant [40 x i8] c"libaot-Toasts.Forms.Plugin.Droid.dll.so\00", align 16
@__DSOCacheEntry_name.31 = internal constant [47 x i8] c"libaot-Xamarin.Android.Support.Fragment.dll.so\00", align 16
@__DSOCacheEntry_name.32 = internal constant [49 x i8] c"libaot-Xamarin.Android.Support.Core.Utils.dll.so\00", align 16
@__DSOCacheEntry_name.33 = internal constant [47 x i8] c"libaot-Toasts.Forms.Plugin.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.34 = internal constant [30 x i8] c"libaot-Plugin.Settings.dll.so\00", align 16
@__DSOCacheEntry_name.35 = internal constant [18 x i8] c"libmono-native.so\00", align 16
@__DSOCacheEntry_name.36 = internal constant [51 x i8] c"libaot-Xamarin.Android.Support.v7.AppCompat.dll.so\00", align 16
@__DSOCacheEntry_name.37 = internal constant [35 x i8] c"libaot-SocketIoClientDotNet.dll.so\00", align 16
@__DSOCacheEntry_name.38 = internal constant [46 x i8] c"libaot-Plugin.Permissions.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.39 = internal constant [24 x i8] c"libmono-profiler-log.so\00", align 16
@__DSOCacheEntry_name.40 = internal constant [37 x i8] c"libaot-Plugin.CurrentActivity.dll.so\00", align 16
@__DSOCacheEntry_name.41 = internal constant [25 x i8] c"libaot-System.Xml.dll.so\00", align 16
@__DSOCacheEntry_name.42 = internal constant [54 x i8] c"libaot-Xamarin.Android.Support.Vector.Drawable.dll.so\00", align 16
@__DSOCacheEntry_name.43 = internal constant [27 x i8] c"libaot-Lottie.Forms.dll.so\00", align 16
@__DSOCacheEntry_name.44 = internal constant [43 x i8] c"libaot-Plugin.Settings.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.45 = internal constant [33 x i8] c"libaot-Xamarin.Forms.Xaml.dll.so\00", align 16
@__DSOCacheEntry_name.46 = internal constant [50 x i8] c"libaot-Xamarin.Android.Support.Annotations.dll.so\00", align 16
@__DSOCacheEntry_name.47 = internal constant [31 x i8] c"libxamarin-debug-app-helper.so\00", align 16
@__DSOCacheEntry_name.48 = internal constant [45 x i8] c"libaot-Xamarin.Forms.Platform.Android.dll.so\00", align 16
@__DSOCacheEntry_name.49 = internal constant [51 x i8] c"libaot-DevExpress.Mobile.Grid.Android.v17.1.dll.so\00", align 16
@__DSOCacheEntry_name.50 = internal constant [28 x i8] c"libaot-WebSocket4Net.dll.so\00", align 16
@__DSOCacheEntry_name.51 = internal constant [35 x i8] c"libaot-EngineIoClientDotNet.dll.so\00", align 16
@__DSOCacheEntry_name.52 = internal constant [21 x i8] c"libaot-System.dll.so\00", align 16
@__DSOCacheEntry_name.53 = internal constant [33 x i8] c"libaot-Plugin.Permissions.dll.so\00", align 16
@__DSOCacheEntry_name.54 = internal constant [33 x i8] c"libaot-Lottie.Forms.Droid.dll.so\00", align 16
@__DSOCacheEntry_name.55 = internal constant [40 x i8] c"libaot-Plugin.Media.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.56 = internal constant [39 x i8] c"libaot-CasosTotalizadores.Droid.dll.so\00", align 16
@__DSOCacheEntry_name.57 = internal constant [30 x i8] c"libaot-System.Xml.Linq.dll.so\00", align 16
@__DSOCacheEntry_name.58 = internal constant [23 x i8] c"libmono-btls-shared.so\00", align 16
@__DSOCacheEntry_name.59 = internal constant [33 x i8] c"libaot-CasosTotalizadores.dll.so\00", align 16
@__DSOCacheEntry_name.60 = internal constant [50 x i8] c"libaot-Xamarin.GooglePlayServices.Basement.dll.so\00", align 16
@__DSOCacheEntry_name.61 = internal constant [49 x i8] c"libaot-Xamarin.Android.Support.Transition.dll.so\00", align 16
@__DSOCacheEntry_name.62 = internal constant [33 x i8] c"libaot-Xamarin.Forms.Maps.dll.so\00", align 16
@__DSOCacheEntry_name.63 = internal constant [30 x i8] c"libaot-System.Numerics.dll.so\00", align 16
@__DSOCacheEntry_name.64 = internal constant [31 x i8] c"libaot-UXDivers.Effects.dll.so\00", align 16
@__DSOCacheEntry_name.65 = internal constant [43 x i8] c"libaot-System.Runtime.Serialization.dll.so\00", align 16
@__DSOCacheEntry_name.66 = internal constant [27 x i8] c"libaot-Plugin.Media.dll.so\00", align 16
@__DSOCacheEntry_name.67 = internal constant [51 x i8] c"libaot-DevExpress.Mobile.Core.Android.v17.1.dll.so\00", align 16
@__DSOCacheEntry_name.68 = internal constant [48 x i8] c"libaot-UXDivers.Artina.Shared.Base.Droid.dll.so\00", align 16
@__DSOCacheEntry_name.69 = internal constant [34 x i8] c"libaot-Plugin.Connectivity.dll.so\00", align 16
@__DSOCacheEntry_name.70 = internal constant [53 x i8] c"libaot-Xamarin.Android.Arch.Lifecycle.Runtime.dll.so\00", align 16
@__DSOCacheEntry_name.71 = internal constant [47 x i8] c"libaot-Plugin.Connectivity.Abstractions.dll.so\00", align 16
@__DSOCacheEntry_name.72 = internal constant [53 x i8] c"libaot-Xamarin.Android.Support.v7.MediaRouter.dll.so\00", align 16
@__DSOCacheEntry_name.73 = internal constant [45 x i8] c"libaot-Xamarin.Android.Support.Design.dll.so\00", align 16
@__DSOCacheEntry_name.74 = internal constant [29 x i8] c"libaot-FormsViewGroup.dll.so\00", align 16
@__DSOCacheEntry_name.75 = internal constant [52 x i8] c"libaot-Xamarin.Android.Arch.Lifecycle.Common.dll.so\00", align 16
@__DSOCacheEntry_name.76 = internal constant [29 x i8] c"libaot-FFImageLoading.dll.so\00", align 16
@__DSOCacheEntry_name.77 = internal constant [41 x i8] c"libaot-System.Net.Http.Extensions.dll.so\00", align 16
@__DSOCacheEntry_name.78 = internal constant [54 x i8] c"libaot-Xamarin.Android.Support.v7.RecyclerView.dll.so\00", align 16
@__DSOCacheEntry_name.79 = internal constant [46 x i8] c"libaot-Xamarin.Android.Support.Core.UI.dll.so\00", align 16
@__DSOCacheEntry_name.80 = internal constant [41 x i8] c"libaot-Xamarin.Android.Support.v4.dll.so\00", align 16
@__DSOCacheEntry_name.81 = internal constant [43 x i8] c"libaot-DevExpress.Mobile.Grid.v17.1.dll.so\00", align 16
@__DSOCacheEntry_name.82 = internal constant [49 x i8] c"libaot-Xamarin.Android.Support.v7.Palette.dll.so\00", align 16
@__DSOCacheEntry_name.83 = internal constant [37 x i8] c"libaot-UXDivers.Effects.Droid.dll.so\00", align 16
@__DSOCacheEntry_name.84 = internal constant [45 x i8] c"libaot-Xamarin.Android.Support.Compat.dll.so\00", align 16
@__DSOCacheEntry_name.85 = internal constant [16 x i8] c"libmonodroid.so\00", align 16
@__DSOCacheEntry_name.86 = internal constant [30 x i8] c"libaot-System.Net.Http.dll.so\00", align 16
@__DSOCacheEntry_name.87 = internal constant [22 x i8] c"libxa-internal-api.so\00", align 16
@__DSOCacheEntry_name.88 = internal constant [19 x i8] c"libmonosgen-2.0.so\00", align 16
@__DSOCacheEntry_name.89 = internal constant [37 x i8] c"libaot-UXDivers.Artina.Shared.dll.so\00", align 16

; dso_cache
@dso_cache = local_unnamed_addr global [520 x %struct.DSOCacheEntry] [
	; 0
	%struct.DSOCacheEntry {
		i64 5995979035480722, ; hash 0x154d4fa87d9292, from name: Mono.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1
	%struct.DSOCacheEntry {
		i64 19064844981351896, ; hash 0x43bb6020cfb5d8, from name: libaot-FFImageLoading.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 2
	%struct.DSOCacheEntry {
		i64 28468208130514897, ; hash 0x6523af3902dfd1, from name: aot-FFImageLoading.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 3
	%struct.DSOCacheEntry {
		i64 72427043973674519, ; hash 0x1015003442eb617, from name: aot-Mono.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 4
	%struct.DSOCacheEntry {
		i64 87890377908147469, ; hash 0x1383fd54263d50d, from name: libaot-DevExpress.Mobile.Core.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 5
	%struct.DSOCacheEntry {
		i64 102964479474942274, ; hash 0x16dcda607964142, from name: libaot-Xamarin.GooglePlayServices.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 6
	%struct.DSOCacheEntry {
		i64 119522282513760569, ; hash 0x1a8a0e1f7fa0139, from name: libaot-Xamarin.GooglePlayServices.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 7
	%struct.DSOCacheEntry {
		i64 120698629574877762, ; hash 0x1accec39cafe242, from name: Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 8
	%struct.DSOCacheEntry {
		i64 192459931963937950, ; hash 0x2abc149d634d49e, from name: libaot-System.ServiceModel.Internals
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 9
	%struct.DSOCacheEntry {
		i64 200523883541530094, ; hash 0x2c86768df7985ee, from name: libaot-System.Net.Http.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 10
	%struct.DSOCacheEntry {
		i64 294126439944357289, ; hash 0x414f27053ef05a9, from name: FFImageLoading.Forms.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 11
	%struct.DSOCacheEntry {
		i64 295573609408109765, ; hash 0x41a16a1b9c01cc5, from name: UXDivers.Artina.Shared.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 12
	%struct.DSOCacheEntry {
		i64 318998200374973725, ; hash 0x46d4f2c5156d51d, from name: libaot-Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 13
	%struct.DSOCacheEntry {
		i64 428423847389740944, ; hash 0x5f2113824f8bf90, from name: Xamarin.Android.Support.v7.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 14
	%struct.DSOCacheEntry {
		i64 435170709725415398, ; hash 0x60a097471d687e6, from name: Xamarin.GooglePlayServices.Location
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 15
	%struct.DSOCacheEntry {
		i64 496011401233072569, ; hash 0x6e22fbdcf0a81b9, from name: libaot-FFImageLoading.Forms.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 16
	%struct.DSOCacheEntry {
		i64 517305746021661547, ; hash 0x72dd6d5cfe3bb6b, from name: Xamarin.Android.Support.Media.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 17
	%struct.DSOCacheEntry {
		i64 544667435434772016, ; hash 0x78f0c2591d00630, from name: libaot-mscorlib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 18
	%struct.DSOCacheEntry {
		i64 584895086741024446, ; hash 0x81df6fb8411eebe, from name: aot-Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 19
	%struct.DSOCacheEntry {
		i64 587670444148824379, ; hash 0x827d327c47c993b, from name: aot-Xamarin.Forms.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 20
	%struct.DSOCacheEntry {
		i64 595449821260221343, ; hash 0x843767525c90b9f, from name: UXDivers.Artina.Shared.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 21
	%struct.DSOCacheEntry {
		i64 643375859359477927, ; hash 0x8edbaef722ef0a7, from name: aot-System.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 22
	%struct.DSOCacheEntry {
		i64 687654259221141486, ; hash 0x98b09e7c92917ee, from name: Xamarin.GooglePlayServices.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 23
	%struct.DSOCacheEntry {
		i64 764506000808377588, ; hash 0xa9c12283ed67cf4, from name: aot-Xamarin.GooglePlayServices.Maps
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 24
	%struct.DSOCacheEntry {
		i64 771524290733889039, ; hash 0xab5014134c7560f, from name: libaot-System.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 25
	%struct.DSOCacheEntry {
		i64 783410688135077914, ; hash 0xadf3bdec389201a, from name: aot-Xamarin.Android.Support.Animated.Vector.Drawable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 26
	%struct.DSOCacheEntry {
		i64 845198478445085526, ; hash 0xbbabf89c06b8356, from name: aot-FFImageLoading.Transformations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 27
	%struct.DSOCacheEntry {
		i64 874839788357954614, ; hash 0xc240e2704742c36, from name: System.Net.Http.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 28
	%struct.DSOCacheEntry {
		i64 875548798299182584, ; hash 0xc2692fe422495f8, from name: aot-Xamarin.Forms.Maps.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 29
	%struct.DSOCacheEntry {
		i64 926729488379472330, ; hash 0xcdc678f45bce9ca, from name: aot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 30
	%struct.DSOCacheEntry {
		i64 985332033409892329, ; hash 0xdac9a438d35bfe9, from name: System.Net.Http.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 31
	%struct.DSOCacheEntry {
		i64 995368324521637483, ; hash 0xdd04237abc9b66b, from name: aot-Xamarin.Forms.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 32
	%struct.DSOCacheEntry {
		i64 996343623809489702, ; hash 0xdd3b93f3b63db26, from name: Xamarin.Forms.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 33
	%struct.DSOCacheEntry {
		i64 1076245082167898142, ; hash 0xeef973335e0f01e, from name: aot-Xamarin.Android.Arch.Core.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 34
	%struct.DSOCacheEntry {
		i64 1090144629972078321, ; hash 0xf20f8c3df490ef1, from name: Lottie
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 35
	%struct.DSOCacheEntry {
		i64 1184071326634436793, ; hash 0x106eaa991cc568b9, from name: Toasts.Forms.Plugin.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 36
	%struct.DSOCacheEntry {
		i64 1342439039765371018, ; hash 0x12a14d31b1d4d88a, from name: Xamarin.Android.Support.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 37
	%struct.DSOCacheEntry {
		i64 1361234383473139038, ; hash 0x12e41375aaf6dd5e, from name: aot-Xamarin.Android.Support.Core.Utils
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 38
	%struct.DSOCacheEntry {
		i64 1435062868661121944, ; hash 0x13ea5e1364e63398, from name: aot-Toasts.Forms.Plugin.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 39
	%struct.DSOCacheEntry {
		i64 1533600985562978013, ; hash 0x154871f893ab96dd, from name: libaot-FFImageLoading.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 40
	%struct.DSOCacheEntry {
		i64 1580140864330444634, ; hash 0x15edc9be817eaf5a, from name: libaot-Plugin.Settings.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 41
	%struct.DSOCacheEntry {
		i64 1590176243623219729, ; hash 0x161170de536d5211, from name: libaot-UXDivers.Artina.Shared.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 42
	%struct.DSOCacheEntry {
		i64 1620383766352397640, ; hash 0x167cc273493e8548, from name: libaot-Xamarin.Forms.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 43
	%struct.DSOCacheEntry {
		i64 1641320959751678609, ; hash 0x16c724b78066ea91, from name: Xamarin.GooglePlayServices.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 44
	%struct.DSOCacheEntry {
		i64 1731380447121279447, ; hash 0x18071957e9b889d7, from name: Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 45
	%struct.DSOCacheEntry {
		i64 1735841361372535901, ; hash 0x1816f285730a5c5d, from name: mono-native
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 46
	%struct.DSOCacheEntry {
		i64 1744702963312407042, ; hash 0x18366e19eeceb202, from name: Xamarin.Android.Support.v7.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 47
	%struct.DSOCacheEntry {
		i64 1756598369329214952, ; hash 0x1860b0e8f8e5f5e8, from name: libaot-Xamarin.GooglePlayServices.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 48
	%struct.DSOCacheEntry {
		i64 1771106501971915871, ; hash 0x18943bfad56bb45f, from name: libaot-Xamarin.Android.Support.Core.Utils
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 49
	%struct.DSOCacheEntry {
		i64 1812881151748048294, ; hash 0x1928a5cd6df185a6, from name: libaot-SocketIoClientDotNet
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 50
	%struct.DSOCacheEntry {
		i64 1847211446066773220, ; hash 0x19a29d05f3d87ce4, from name: libaot-Plugin.Permissions.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 51
	%struct.DSOCacheEntry {
		i64 1892203915348325057, ; hash 0x1a42756f88f0b2c1, from name: libmono-profiler-log
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 52
	%struct.DSOCacheEntry {
		i64 1922595594659046354, ; hash 0x1aae6e81ca6223d2, from name: libaot-Toasts.Forms.Plugin.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 53
	%struct.DSOCacheEntry {
		i64 1947595405918281731, ; hash 0x1b073fb3eff12003, from name: aot-Plugin.CurrentActivity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 54
	%struct.DSOCacheEntry {
		i64 2063968891640723124, ; hash 0x1ca4b0c585b3b6b4, from name: System.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 55
	%struct.DSOCacheEntry {
		i64 2100569978450910836, ; hash 0x1d26b9441f6a9e74, from name: libaot-Xamarin.Android.Support.Vector.Drawable
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 56
	%struct.DSOCacheEntry {
		i64 2117103631422224137, ; hash 0x1d6176892f9c7709, from name: libaot-System.ServiceModel.Internals.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 57
	%struct.DSOCacheEntry {
		i64 2131664956162164508, ; hash 0x1d9531fbcc31c71c, from name: libaot-Plugin.CurrentActivity
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 58
	%struct.DSOCacheEntry {
		i64 2176801077634916273, ; hash 0x1e358d0c031ddfb1, from name: libaot-Xamarin.Android.Support.Core.Utils.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 59
	%struct.DSOCacheEntry {
		i64 2241162083223965778, ; hash 0x1f1a350a5ea39052, from name: aot-Xamarin.GooglePlayServices.Location
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 60
	%struct.DSOCacheEntry {
		i64 2298577993720769444, ; hash 0x1fe63081c441aba4, from name: Xamarin.Android.Support.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 61
	%struct.DSOCacheEntry {
		i64 2308887024097200448, ; hash 0x200ad083f1d28940, from name: libaot-Lottie.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 62
	%struct.DSOCacheEntry {
		i64 2370798652957886983, ; hash 0x20e6c4d057878a07, from name: aot-Xamarin.Android.Support.Core.Utils.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 63
	%struct.DSOCacheEntry {
		i64 2398389675332832547, ; hash 0x2148cab3d72d8d23, from name: libaot-Plugin.Settings.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 64
	%struct.DSOCacheEntry {
		i64 2456532954210399114, ; hash 0x22175bb4e2c0738a, from name: aot-Plugin.Settings.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 65
	%struct.DSOCacheEntry {
		i64 2471278266606390833, ; hash 0x224bbe7d76378e31, from name: libaot-Xamarin.Forms.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 66
	%struct.DSOCacheEntry {
		i64 2549791192922874033, ; hash 0x2362ad94a19660b1, from name: libaot-Xamarin.Android.Support.v7.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 67
	%struct.DSOCacheEntry {
		i64 2583255201894690065, ; hash 0x23d990eb611ced11, from name: libaot-Xamarin.Forms.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 68
	%struct.DSOCacheEntry {
		i64 2587843861838087316, ; hash 0x23e9de480708c494, from name: libaot-Plugin.CurrentActivity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 69
	%struct.DSOCacheEntry {
		i64 2634317917122231241, ; hash 0x248efa303b847bc9, from name: aot-Xamarin.Android.Support.Annotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 70
	%struct.DSOCacheEntry {
		i64 2667643254986405560, ; hash 0x25055f6818ee76b8, from name: aot-Xamarin.Android.Support.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 71
	%struct.DSOCacheEntry {
		i64 2676598929141056664, ; hash 0x2525308b79a4c498, from name: xamarin-debug-app-helper.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 72
	%struct.DSOCacheEntry {
		i64 2685939715526887227, ; hash 0x25465ff0c818073b, from name: Xamarin.Forms.Platform.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 73
	%struct.DSOCacheEntry {
		i64 2768100712020381633, ; hash 0x266a44ee7a7b0fc1, from name: libaot-FFImageLoading.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 74
	%struct.DSOCacheEntry {
		i64 2778326426019800565, ; hash 0x268e992a0cfda5f5, from name: aot-DevExpress.Mobile.Grid.Android.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 75
	%struct.DSOCacheEntry {
		i64 2799603620072217830, ; hash 0x26da30a8d64d5ce6, from name: aot-Xamarin.Forms.Platform.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 76
	%struct.DSOCacheEntry {
		i64 2862633460186580851, ; hash 0x27ba1df714918773, from name: libaot-WebSocket4Net
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 77
	%struct.DSOCacheEntry {
		i64 2863324215353042462, ; hash 0x27bc92340ce4661e, from name: FFImageLoading.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 78
	%struct.DSOCacheEntry {
		i64 2865474358645574157, ; hash 0x27c435bf4c0f4a0d, from name: libaot-EngineIoClientDotNet
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 79
	%struct.DSOCacheEntry {
		i64 2895224535127013735, ; hash 0x282de760093db967, from name: libaot-System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 80
	%struct.DSOCacheEntry {
		i64 2960931600190307745, ; hash 0x2917579a49927da1, from name: Xamarin.Forms.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 81
	%struct.DSOCacheEntry {
		i64 2966911694472473339, ; hash 0x292c96777cfbeafb, from name: libaot-Plugin.Permissions
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 82
	%struct.DSOCacheEntry {
		i64 2967592192117877398, ; hash 0x292f01603168aa96, from name: Xamarin.Forms.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 83
	%struct.DSOCacheEntry {
		i64 2968129971257370979, ; hash 0x2930ea7ba7fc6963, from name: libaot-Lottie.Forms.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 84
	%struct.DSOCacheEntry {
		i64 3029011109441260501, ; hash 0x2a09358e3ef54bd5, from name: aot-DevExpress.Mobile.Core.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 85
	%struct.DSOCacheEntry {
		i64 3047287993565749701, ; hash 0x2a4a2448f0cca1c5, from name: aot-Plugin.Media.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 86
	%struct.DSOCacheEntry {
		i64 3058552144132576965, ; hash 0x2a7228f85e0816c5, from name: libaot-CasosTotalizadores.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 87
	%struct.DSOCacheEntry {
		i64 3205756426316191992, ; hash 0x2c7d227c230098f8, from name: aot-EngineIoClientDotNet
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 88
	%struct.DSOCacheEntry {
		i64 3228004203549710724, ; hash 0x2ccc2cb86e0c5984, from name: aot-System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 89
	%struct.DSOCacheEntry {
		i64 3245573717126666778, ; hash 0x2d0a981995adda1a, from name: mono-btls-shared
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 90
	%struct.DSOCacheEntry {
		i64 3260578930178303626, ; hash 0x2d3fe742ff66a68a, from name: libaot-CasosTotalizadores
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 91
	%struct.DSOCacheEntry {
		i64 3293430362434453585, ; hash 0x2db49d771d644051, from name: aot-System.ServiceModel.Internals.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 92
	%struct.DSOCacheEntry {
		i64 3411255996856937470, ; hash 0x2f5737416a942bfe, from name: Xamarin.GooglePlayServices.Basement
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 93
	%struct.DSOCacheEntry {
		i64 3416863381059275062, ; hash 0x2f6b23244a140936, from name: Xamarin.Android.Support.Transition.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 94
	%struct.DSOCacheEntry {
		i64 3469681881671425124, ; hash 0x3026c949c8a25c64, from name: aot-Xamarin.Forms.Maps.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 95
	%struct.DSOCacheEntry {
		i64 3531994851595924923, ; hash 0x31042a9aade235bb, from name: System.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 96
	%struct.DSOCacheEntry {
		i64 3542907141136183497, ; hash 0x312aef46139df0c9, from name: aot-Plugin.Permissions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 97
	%struct.DSOCacheEntry {
		i64 3585225387666355025, ; hash 0x31c1477ea790b351, from name: libaot-Xamarin.Android.Support.Media.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 98
	%struct.DSOCacheEntry {
		i64 3592359409249452165, ; hash 0x31da9fd97dd88085, from name: libaot-UXDivers.Effects
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 99
	%struct.DSOCacheEntry {
		i64 3609787854626478660, ; hash 0x32188aeda587da44, from name: Plugin.CurrentActivity
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 100
	%struct.DSOCacheEntry {
		i64 3617300193753112415, ; hash 0x32333b5c669b1f5f, from name: Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 101
	%struct.DSOCacheEntry {
		i64 3624954949676586435, ; hash 0x324e6d52264455c3, from name: libmono-native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 102
	%struct.DSOCacheEntry {
		i64 3673950514234315711, ; hash 0x32fc7e86fb4cd3bf, from name: System.Runtime.Serialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 103
	%struct.DSOCacheEntry {
		i64 3691201895044917681, ; hash 0x3339c8911466a9b1, from name: aot-Plugin.Media.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 104
	%struct.DSOCacheEntry {
		i64 3709026527226490938, ; hash 0x33791bf9a9d5f03a, from name: aot-DevExpress.Mobile.Core.Android.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 105
	%struct.DSOCacheEntry {
		i64 3748353218988528648, ; hash 0x3404d3649e80d408, from name: libaot-Xamarin.Android.Support.Vector.Drawable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 106
	%struct.DSOCacheEntry {
		i64 3750968707670692760, ; hash 0x340e1e2a88515398, from name: aot-Xamarin.Forms.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 107
	%struct.DSOCacheEntry {
		i64 3757256743119320929, ; hash 0x34247519df917761, from name: aot-Xamarin.GooglePlayServices.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 108
	%struct.DSOCacheEntry {
		i64 3792734155220677803, ; hash 0x34a27f9e916b74ab, from name: libaot-System.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 109
	%struct.DSOCacheEntry {
		i64 3831950323221560130, ; hash 0x352dd28434907b42, from name: Xamarin.GooglePlayServices.Basement.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 110
	%struct.DSOCacheEntry {
		i64 3865117617889807977, ; hash 0x35a3a7fec56d0e69, from name: aot-Xamarin.GooglePlayServices.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 111
	%struct.DSOCacheEntry {
		i64 3883875758066343538, ; hash 0x35e64c6c9f4b9e72, from name: libmono-btls-shared
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 112
	%struct.DSOCacheEntry {
		i64 3914192053331541977, ; hash 0x365200ef297bbfd9, from name: aot-Xamarin.Android.Support.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 113
	%struct.DSOCacheEntry {
		i64 3919653354113080597, ; hash 0x366567f556941d15, from name: aot-SocketIoClientDotNet
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 114
	%struct.DSOCacheEntry {
		i64 3939793915489393737, ; hash 0x36acf5b134fd9c49, from name: libaot-Xamarin.Android.Support.v7.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 115
	%struct.DSOCacheEntry {
		i64 3988189981108347903, ; hash 0x3758e5a850bc23ff, from name: UXDivers.Artina.Shared.Base.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 116
	%struct.DSOCacheEntry {
		i64 4112760786783652498, ; hash 0x391376252e654a92, from name: aot-Plugin.Connectivity
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 117
	%struct.DSOCacheEntry {
		i64 4242335214925446848, ; hash 0x3adfcd66afc2fec0, from name: UXDivers.Artina.Shared.Base.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 118
	%struct.DSOCacheEntry {
		i64 4245825166478335344, ; hash 0x3aec337e5a5add70, from name: aot-Xamarin.GooglePlayServices.Location.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 119
	%struct.DSOCacheEntry {
		i64 4246693446720146042, ; hash 0x3aef493099bbca7a, from name: Toasts.Forms.Plugin.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 120
	%struct.DSOCacheEntry {
		i64 4247996603072512073, ; hash 0x3af3ea6755340049, from name: Xamarin.GooglePlayServices.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 121
	%struct.DSOCacheEntry {
		i64 4253135428940497963, ; hash 0x3b062c2377a0842b, from name: aot-Xamarin.Forms.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 122
	%struct.DSOCacheEntry {
		i64 4285163166716090469, ; hash 0x3b77f53244b35865, from name: libaot-UXDivers.Effects.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 123
	%struct.DSOCacheEntry {
		i64 4287683434896550515, ; hash 0x3b80e95dee55ea73, from name: Xamarin.Android.Arch.Lifecycle.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 124
	%struct.DSOCacheEntry {
		i64 4312761558695659170, ; hash 0x3bda01c9a303c6a2, from name: libaot-Xamarin.Android.Support.Transition
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 125
	%struct.DSOCacheEntry {
		i64 4351791593134436142, ; hash 0x3c64ab65ad4f2f2e, from name: SocketIoClientDotNet
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 126
	%struct.DSOCacheEntry {
		i64 4377660935729018124, ; hash 0x3cc0936d5d3b750c, from name: Xamarin.Android.Support.Annotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 127
	%struct.DSOCacheEntry {
		i64 4407676816747141192, ; hash 0x3d2b36b642f01848, from name: libaot-Plugin.Connectivity.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 128
	%struct.DSOCacheEntry {
		i64 4443117544472524582, ; hash 0x3da91fddb5973726, from name: aot-Xamarin.Android.Support.v7.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 129
	%struct.DSOCacheEntry {
		i64 4452418026182074506, ; hash 0x3dca2a9ada20e08a, from name: aot-Xamarin.Android.Support.Animated.Vector.Drawable
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 130
	%struct.DSOCacheEntry {
		i64 4472958691645351923, ; hash 0x3e13243b368467f3, from name: aot-mscorlib
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 131
	%struct.DSOCacheEntry {
		i64 4480088684592380434, ; hash 0x3e2c78ec0f603a12, from name: aot-Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 132
	%struct.DSOCacheEntry {
		i64 4525561845656915374, ; hash 0x3ece06856b710dae, from name: System.ServiceModel.Internals
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 133
	%struct.DSOCacheEntry {
		i64 4535721413119024522, ; hash 0x3ef21e980d179d8a, from name: System.ServiceModel.Internals.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 134
	%struct.DSOCacheEntry {
		i64 4616232946718031335, ; hash 0x401027683d953de7, from name: Toasts.Forms.Plugin.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 135
	%struct.DSOCacheEntry {
		i64 4631852670840551122, ; hash 0x4047a576a96536d2, from name: aot-CasosTotalizadores.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 136
	%struct.DSOCacheEntry {
		i64 4677005744773435024, ; hash 0x40e80ff1edae8e90, from name: Xamarin.Android.Arch.Core.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 137
	%struct.DSOCacheEntry {
		i64 4725285028989645738, ; hash 0x419395b2bf6633aa, from name: aot-System.Net.Http.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 138
	%struct.DSOCacheEntry {
		i64 4727951288059655328, ; hash 0x419d0ea5902574a0, from name: aot-Xamarin.GooglePlayServices.Basement
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 139
	%struct.DSOCacheEntry {
		i64 4746643953623332214, ; hash 0x41df7786eaf97576, from name: libaot-mscorlib
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 140
	%struct.DSOCacheEntry {
		i64 4787698391273820780, ; hash 0x427152520f95d26c, from name: Plugin.Settings.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 141
	%struct.DSOCacheEntry {
		i64 4799618160137045028, ; hash 0x429bab49847b8424, from name: aot-System.Runtime.Serialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 142
	%struct.DSOCacheEntry {
		i64 4857038601685998278, ; hash 0x4367aadfe1da9ac6, from name: DevExpress.Mobile.Core.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 143
	%struct.DSOCacheEntry {
		i64 4859097705914759025, ; hash 0x436efb9e71f6f771, from name: aot-Plugin.Media.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 144
	%struct.DSOCacheEntry {
		i64 4892913817935665049, ; hash 0x43e71f3192a7d799, from name: aot-Xamarin.Android.Support.v7.MediaRouter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 145
	%struct.DSOCacheEntry {
		i64 4905845688753735370, ; hash 0x441510a9610c46ca, from name: libaot-Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 146
	%struct.DSOCacheEntry {
		i64 4914391832395879945, ; hash 0x44336d5581099609, from name: FFImageLoading.Transformations
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 147
	%struct.DSOCacheEntry {
		i64 4916543807596985719, ; hash 0x443b128b4676fd77, from name: Lottie.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 148
	%struct.DSOCacheEntry {
		i64 5038449464920846700, ; hash 0x45ec2b17ef5d316c, from name: aot-UXDivers.Artina.Shared.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 149
	%struct.DSOCacheEntry {
		i64 5084339791899622993, ; hash 0x468f341a4d8f7e51, from name: aot-System.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 150
	%struct.DSOCacheEntry {
		i64 5087051638177552849, ; hash 0x4698d68337a459d1, from name: aot-Xamarin.Android.Support.Design.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 151
	%struct.DSOCacheEntry {
		i64 5112493042083935107, ; hash 0x46f33955aa11b383, from name: libaot-Xamarin.GooglePlayServices.Maps.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 152
	%struct.DSOCacheEntry {
		i64 5161979805990825802, ; hash 0x47a30948c1d2af4a, from name: libaot-Xamarin.Forms.Platform.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 153
	%struct.DSOCacheEntry {
		i64 5168141022016073091, ; hash 0x47b8ece0a6646d83, from name: libaot-Xamarin.Android.Support.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 154
	%struct.DSOCacheEntry {
		i64 5202753749449073649, ; hash 0x4833e4f841be63f1, from name: Plugin.Media
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 155
	%struct.DSOCacheEntry {
		i64 5212214464538052194, ; hash 0x48558170a3f18662, from name: libaot-FFImageLoading.Transformations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 156
	%struct.DSOCacheEntry {
		i64 5216593438918552708, ; hash 0x48651018105fac84, from name: libaot-WebSocket4Net.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 157
	%struct.DSOCacheEntry {
		i64 5550865768259438606, ; hash 0x4d08a301a8fac80e, from name: aot-FormsViewGroup
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 158
	%struct.DSOCacheEntry {
		i64 5584320105013033469, ; hash 0x4d7f7d8c6b5fb9fd, from name: aot-Xamarin.Forms.Maps.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 159
	%struct.DSOCacheEntry {
		i64 5635825853295123668, ; hash 0x4e3679c0f19e5cd4, from name: aot-Xamarin.Android.Arch.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 160
	%struct.DSOCacheEntry {
		i64 5824295031313318979, ; hash 0x50d40d78f880c443, from name: aot-FFImageLoading
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 161
	%struct.DSOCacheEntry {
		i64 5838753227289935151, ; hash 0x51076b200bc83d2f, from name: aot-System.Net.Http.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 162
	%struct.DSOCacheEntry {
		i64 5908491663210328264, ; hash 0x51ff2ddcf80230c8, from name: libaot-System.Net.Http.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 163
	%struct.DSOCacheEntry {
		i64 5923947504251438684, ; hash 0x523616de62f8065c, from name: Xamarin.Android.Support.v7.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 164
	%struct.DSOCacheEntry {
		i64 5928947216509252318, ; hash 0x5247da149c1332de, from name: DevExpress.Mobile.Grid.Android.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 165
	%struct.DSOCacheEntry {
		i64 5944539212009660079, ; hash 0x527f3eeaf5375eaf, from name: libaot-Xamarin.Android.Support.Core.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 166
	%struct.DSOCacheEntry {
		i64 5953267539560456898, ; hash 0x529e4149145d62c2, from name: aot-FFImageLoading.Forms.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 167
	%struct.DSOCacheEntry {
		i64 6033559668784580721, ; hash 0x53bb828d35074871, from name: aot-Xamarin.Android.Support.Design
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 168
	%struct.DSOCacheEntry {
		i64 6120656991460866797, ; hash 0x54f0f11ae8093aed, from name: aot-System.Runtime.Serialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 169
	%struct.DSOCacheEntry {
		i64 6167778534107165696, ; hash 0x559859e602bcb400, from name: libaot-Xamarin.Android.Support.v4
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 170
	%struct.DSOCacheEntry {
		i64 6173022866857584373, ; hash 0x55aafb976168e6f5, from name: aot-Xamarin.Android.Support.Core.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 171
	%struct.DSOCacheEntry {
		i64 6203068351810030557, ; hash 0x5615b9ccfb1acbdd, from name: libaot-Xamarin.Android.Support.v7.MediaRouter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 172
	%struct.DSOCacheEntry {
		i64 6249334571345231291, ; hash 0x56ba18aea799bdbb, from name: libaot-DevExpress.Mobile.Grid.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 173
	%struct.DSOCacheEntry {
		i64 6252584825880342533, ; hash 0x56c5a4c582987005, from name: libaot-Xamarin.Android.Support.Annotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 174
	%struct.DSOCacheEntry {
		i64 6302066212420741396, ; hash 0x57756fd496546914, from name: Xamarin.Android.Support.Vector.Drawable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 175
	%struct.DSOCacheEntry {
		i64 6376181678372852540, ; hash 0x587cbf743ac4933c, from name: aot-Xamarin.Forms.Platform.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 176
	%struct.DSOCacheEntry {
		i64 6385845932265485820, ; hash 0x589f150aaf0eb5fc, from name: aot-Xamarin.Android.Support.v4
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 177
	%struct.DSOCacheEntry {
		i64 6386633613368426329, ; hash 0x58a1e16efb64ff59, from name: libaot-Xamarin.Android.Support.Design
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 178
	%struct.DSOCacheEntry {
		i64 6406020188140135493, ; hash 0x58e6c16baa12e445, from name: aot-Xamarin.GooglePlayServices.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 179
	%struct.DSOCacheEntry {
		i64 6437453774371681866, ; hash 0x59566e19c76bf64a, from name: Xamarin.Android.Support.v7.Palette
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 180
	%struct.DSOCacheEntry {
		i64 6457195912600883720, ; hash 0x599c917887ae1208, from name: libaot-Xamarin.Forms.Platform.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 181
	%struct.DSOCacheEntry {
		i64 6506787423624702956, ; hash 0x5a4cc0aff6212bec, from name: UXDivers.Effects.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 182
	%struct.DSOCacheEntry {
		i64 6521880595188375514, ; hash 0x5a825fd8cfb75fda, from name: aot-Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 183
	%struct.DSOCacheEntry {
		i64 6588599331800941662, ; hash 0x5b6f682f335f045e, from name: Xamarin.Android.Support.v4
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 184
	%struct.DSOCacheEntry {
		i64 6635387966917840004, ; hash 0x5c15a2333b0a0c84, from name: libxamarin-debug-app-helper.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 185
	%struct.DSOCacheEntry {
		i64 6702636888189336769, ; hash 0x5d048cbcdaf47cc1, from name: libaot-UXDivers.Artina.Shared.Base.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 186
	%struct.DSOCacheEntry {
		i64 6760522402247041183, ; hash 0x5dd2334e5a01609f, from name: FFImageLoading.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 187
	%struct.DSOCacheEntry {
		i64 6794186851728265670, ; hash 0x5e49ccf1cae491c6, from name: libaot-Plugin.Media.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 188
	%struct.DSOCacheEntry {
		i64 6876862101832370452, ; hash 0x5f6f85a57d108914, from name: System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 189
	%struct.DSOCacheEntry {
		i64 6935204139325058492, ; hash 0x603ecb6ba149edbc, from name: libaot-System.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 190
	%struct.DSOCacheEntry {
		i64 6988636769173692153, ; hash 0x60fca01d3ad4def9, from name: libaot-UXDivers.Effects.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 191
	%struct.DSOCacheEntry {
		i64 6992610513881970784, ; hash 0x610abe36c498b860, from name: aot-System.Net.Http.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 192
	%struct.DSOCacheEntry {
		i64 7014003449775902937, ; hash 0x6156bef9cd41d0d9, from name: mono-profiler-log.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 193
	%struct.DSOCacheEntry {
		i64 7060370073282991209, ; hash 0x61fb792c98d4d469, from name: aot-EngineIoClientDotNet.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 194
	%struct.DSOCacheEntry {
		i64 7103284369736571931, ; hash 0x6293ef7fdcbb9c1b, from name: libaot-Xamarin.Android.Support.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 195
	%struct.DSOCacheEntry {
		i64 7106548671186296926, ; hash 0x629f885d4515605e, from name: libaot-System.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 196
	%struct.DSOCacheEntry {
		i64 7154889880024476300, ; hash 0x634b467009e56a8c, from name: UXDivers.Artina.Shared.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 197
	%struct.DSOCacheEntry {
		i64 7181379332087055637, ; hash 0x63a9627436618515, from name: Xamarin.Android.Support.Core.Utils.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 198
	%struct.DSOCacheEntry {
		i64 7240006720151143029, ; hash 0x6479abc0b60cc275, from name: DevExpress.Mobile.Grid.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 199
	%struct.DSOCacheEntry {
		i64 7297444947327903976, ; hash 0x6545bb841d72e8e8, from name: libaot-UXDivers.Artina.Shared.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 200
	%struct.DSOCacheEntry {
		i64 7338982286544642983, ; hash 0x65d94d818a60a3a7, from name: monodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 201
	%struct.DSOCacheEntry {
		i64 7373225577660455864, ; hash 0x6652f5990d469bb8, from name: libaot-Plugin.Permissions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 202
	%struct.DSOCacheEntry {
		i64 7407203823444058461, ; hash 0x66cbaca1e34c615d, from name: libaot-Xamarin.Forms.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 203
	%struct.DSOCacheEntry {
		i64 7447336822326045843, ; hash 0x675a4161d96e2c93, from name: Plugin.Media.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 204
	%struct.DSOCacheEntry {
		i64 7457488243927861471, ; hash 0x677e520bdff8c8df, from name: aot-UXDivers.Effects.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 205
	%struct.DSOCacheEntry {
		i64 7465578309990517956, ; hash 0x679b0feb29d88cc4, from name: aot-System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 206
	%struct.DSOCacheEntry {
		i64 7535601351437907993, ; hash 0x6893d580f968f819, from name: System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 207
	%struct.DSOCacheEntry {
		i64 7563059125192964589, ; hash 0x68f562341c6739ed, from name: libaot-Xamarin.Forms.Maps.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 208
	%struct.DSOCacheEntry {
		i64 7599707127229129073, ; hash 0x6977955e037f2171, from name: aot-Plugin.Connectivity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 209
	%struct.DSOCacheEntry {
		i64 7640496556702443398, ; hash 0x6a087f2321d82786, from name: aot-Xamarin.Android.Arch.Lifecycle.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 210
	%struct.DSOCacheEntry {
		i64 7654504624184590948, ; hash 0x6a3a4366801b8264, from name: System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 211
	%struct.DSOCacheEntry {
		i64 7717568796801148197, ; hash 0x6b1a4fee66f8a525, from name: libxa-internal-api
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 212
	%struct.DSOCacheEntry {
		i64 7735176074855944702, ; hash 0x6b58dda848e391fe, from name: Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 213
	%struct.DSOCacheEntry {
		i64 7740286304433625072, ; hash 0x6b6b0562539657f0, from name: libmonosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 214
	%struct.DSOCacheEntry {
		i64 7756666888837337292, ; hash 0x6ba53770562f10cc, from name: aot-Xamarin.Android.Support.v4.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 215
	%struct.DSOCacheEntry {
		i64 7782470588265735811, ; hash 0x6c00e3c448812683, from name: libaot-Plugin.Connectivity
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 216
	%struct.DSOCacheEntry {
		i64 7801332232966209597, ; hash 0x6c43e65528c1803d, from name: DevExpress.Mobile.Grid.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 217
	%struct.DSOCacheEntry {
		i64 7803414816138899049, ; hash 0x6c4b4c6e56faae69, from name: CasosTotalizadores.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 218
	%struct.DSOCacheEntry {
		i64 7820441508502274321, ; hash 0x6c87ca1e14ff8111, from name: System.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 219
	%struct.DSOCacheEntry {
		i64 7836205749880396916, ; hash 0x6cbfcb9c8c7e9c74, from name: aot-CasosTotalizadores.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 220
	%struct.DSOCacheEntry {
		i64 7852346557833039773, ; hash 0x6cf9239740e64f9d, from name: libxamarin-debug-app-helper
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 221
	%struct.DSOCacheEntry {
		i64 7920910271187274848, ; hash 0x6decb9ecc3dc4c60, from name: libaot-CasosTotalizadores.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 222
	%struct.DSOCacheEntry {
		i64 8003488281596490781, ; hash 0x6f121a30148f741d, from name: Xamarin.Android.Support.v7.MediaRouter
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 223
	%struct.DSOCacheEntry {
		i64 8022274032104026556, ; hash 0x6f54d7ba7666b1bc, from name: libaot-FormsViewGroup
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 224
	%struct.DSOCacheEntry {
		i64 8025784210716531711, ; hash 0x6f6150379bb29bff, from name: UXDivers.Artina.Shared.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 225
	%struct.DSOCacheEntry {
		i64 8065724853579766988, ; hash 0x6fef360531a95ccc, from name: libaot-DevExpress.Mobile.Core.Android.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 226
	%struct.DSOCacheEntry {
		i64 8071392368649052779, ; hash 0x700358986020226b, from name: libaot-Xamarin.Android.Support.Animated.Vector.Drawable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 227
	%struct.DSOCacheEntry {
		i64 8101777744205214367, ; hash 0x706f4beeec84729f, from name: Xamarin.Android.Support.Annotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 228
	%struct.DSOCacheEntry {
		i64 8140149291865993682, ; hash 0x70f79ea71051f1d2, from name: libaot-Xamarin.Android.Arch.Core.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 229
	%struct.DSOCacheEntry {
		i64 8178040181897213562, ; hash 0x717e3c3760dab67a, from name: Xamarin.Forms.Maps.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 230
	%struct.DSOCacheEntry {
		i64 8245499330237193625, ; hash 0x726de5f44e825d99, from name: aot-System.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 231
	%struct.DSOCacheEntry {
		i64 8316843229190310146, ; hash 0x736b5cda38804902, from name: Xamarin.Forms.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 232
	%struct.DSOCacheEntry {
		i64 8392333777418328833, ; hash 0x74778f1b27881b01, from name: libmonodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 233
	%struct.DSOCacheEntry {
		i64 8415937687742701494, ; hash 0x74cb6abcc9b9dfb6, from name: aot-UXDivers.Artina.Shared.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 234
	%struct.DSOCacheEntry {
		i64 8422712955744893874, ; hash 0x74e37ccecc413bb2, from name: Xamarin.Android.Support.Animated.Vector.Drawable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 235
	%struct.DSOCacheEntry {
		i64 8465246834489536396, ; hash 0x757a992529bfaf8c, from name: Xamarin.Android.Support.v7.Palette.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 236
	%struct.DSOCacheEntry {
		i64 8522025752637549819, ; hash 0x7644514538b12cfb, from name: aot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 237
	%struct.DSOCacheEntry {
		i64 8567823480633558934, ; hash 0x76e7060fb56a0796, from name: libaot-Toasts.Forms.Plugin.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 238
	%struct.DSOCacheEntry {
		i64 8603456179012555631, ; hash 0x77659dcfceaed36f, from name: libaot-Xamarin.GooglePlayServices.Location.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 239
	%struct.DSOCacheEntry {
		i64 8607186015093582086, ; hash 0x7772de13f15ce906, from name: libaot-Plugin.Permissions.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 240
	%struct.DSOCacheEntry {
		i64 8612207396229290788, ; hash 0x7784b4ff583d1b24, from name: aot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 241
	%struct.DSOCacheEntry {
		i64 8626175481042262068, ; hash 0x77b654e585b55834, from name: Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 242
	%struct.DSOCacheEntry {
		i64 8656059875509947692, ; hash 0x7820809852484d2c, from name: libaot-DevExpress.Mobile.Core.Android.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 243
	%struct.DSOCacheEntry {
		i64 8673945120601860270, ; hash 0x78600b2172b4e8ae, from name: mono-btls-shared.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 244
	%struct.DSOCacheEntry {
		i64 8695794572605806555, ; hash 0x78adab176bf057db, from name: Plugin.Permissions.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 245
	%struct.DSOCacheEntry {
		i64 8725230987032401247, ; hash 0x79163f5abd4c155f, from name: aot-Xamarin.Android.Support.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 246
	%struct.DSOCacheEntry {
		i64 8733154992216399937, ; hash 0x79326631f77ce041, from name: libaot-Xamarin.Android.Support.v7.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 247
	%struct.DSOCacheEntry {
		i64 8742546945128219235, ; hash 0x7953c420688b4263, from name: EngineIoClientDotNet
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 248
	%struct.DSOCacheEntry {
		i64 8743917041106319148, ; hash 0x7958a238bca0772c, from name: aot-Xamarin.Android.Support.Core.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 249
	%struct.DSOCacheEntry {
		i64 8772604801161716260, ; hash 0x79be8d9660216224, from name: aot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 250
	%struct.DSOCacheEntry {
		i64 8866250128793773825, ; hash 0x7b0b3f844883a701, from name: Plugin.Permissions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 251
	%struct.DSOCacheEntry {
		i64 8923445723328228997, ; hash 0x7bd6729b5f752e85, from name: SocketIoClientDotNet.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 252
	%struct.DSOCacheEntry {
		i64 9055317871244365271, ; hash 0x7daaf3a073c44dd7, from name: monodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 253
	%struct.DSOCacheEntry {
		i64 9094004549068921173, ; hash 0x7e3464f48d0a1955, from name: System.Net.Http.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 254
	%struct.DSOCacheEntry {
		i64 9171632214465058671, ; hash 0x7f482ee7d9b8176f, from name: aot-Xamarin.GooglePlayServices.Basement.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 255
	%struct.DSOCacheEntry {
		i64 9173302449816882251, ; hash 0x7f4e1df9d28e4c4b, from name: libaot-Lottie.Forms.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 256
	%struct.DSOCacheEntry {
		i64 9207742526868940023, ; hash 0x7fc8790b2147e4f7, from name: libaot-System.Runtime.Serialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 257
	%struct.DSOCacheEntry {
		i64 9216616101995951650, ; hash 0x7fe7ff83569d3622, from name: Plugin.Settings.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 258
	%struct.DSOCacheEntry {
		i64 9303254524955344050, ; hash 0x811bccb31f023cb2, from name: libaot-Plugin.Media.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 259
	%struct.DSOCacheEntry {
		i64 9303952551300417018, ; hash 0x811e478d0b59c5fa, from name: libaot-Xamarin.Android.Support.Media.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 260
	%struct.DSOCacheEntry {
		i64 9309754398062521136, ; hash 0x8132e44cc2a5ab30, from name: libaot-Plugin.Media.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 261
	%struct.DSOCacheEntry {
		i64 9338662132064502671, ; hash 0x819997bb1318c38f, from name: xa-internal-api.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 262
	%struct.DSOCacheEntry {
		i64 9350967601773493280, ; hash 0x81c54f7d81e53c20, from name: libaot-CasosTotalizadores.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 263
	%struct.DSOCacheEntry {
		i64 9406408017747491738, ; hash 0x828a46413e39bb9a, from name: aot-Xamarin.Android.Arch.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 264
	%struct.DSOCacheEntry {
		i64 9407125827523456525, ; hash 0x828cd3195af02e0d, from name: aot-Plugin.Settings.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 265
	%struct.DSOCacheEntry {
		i64 9475595603812259686, ; hash 0x838013ff707b9766, from name: Xamarin.Android.Support.Design
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 266
	%struct.DSOCacheEntry {
		i64 9477147615513314750, ; hash 0x8385978b529c85be, from name: aot-Xamarin.Android.Arch.Core.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 267
	%struct.DSOCacheEntry {
		i64 9489299953998328807, ; hash 0x83b0c4081d3373e7, from name: libaot-System.Net.Http.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 268
	%struct.DSOCacheEntry {
		i64 9524411253508923367, ; hash 0x842d81929421dfe7, from name: libaot-Xamarin.Android.Support.v7.Palette
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 269
	%struct.DSOCacheEntry {
		i64 9545666524950242097, ; hash 0x847905211bff2331, from name: libaot-Xamarin.Forms.Maps.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 270
	%struct.DSOCacheEntry {
		i64 9641796949223436837, ; hash 0x85ce8b3daae87225, from name: libaot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 271
	%struct.DSOCacheEntry {
		i64 9796002549892435369, ; hash 0x87f2646aed28cda9, from name: aot-FFImageLoading.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 272
	%struct.DSOCacheEntry {
		i64 9806650152806838936, ; hash 0x8818385b2a94f298, from name: Plugin.Settings.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 273
	%struct.DSOCacheEntry {
		i64 9891393487053833848, ; hash 0x894549f83974c678, from name: Xamarin.Android.Support.Design.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 274
	%struct.DSOCacheEntry {
		i64 9902849708295509810, ; hash 0x896dfd579708d732, from name: Plugin.Media.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 275
	%struct.DSOCacheEntry {
		i64 9998632235833408227, ; hash 0x8ac2470b209ebae3, from name: Mono.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 276
	%struct.DSOCacheEntry {
		i64 10009227487410668626, ; hash 0x8ae7eb5e5f304452, from name: FFImageLoading.Transformations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 277
	%struct.DSOCacheEntry {
		i64 10131599475156204988, ; hash 0x8c9aac0b0b383dbc, from name: libaot-System.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 278
	%struct.DSOCacheEntry {
		i64 10200177517049875725, ; hash 0x8d8e4f68adaf0d0d, from name: libaot-FFImageLoading.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 279
	%struct.DSOCacheEntry {
		i64 10201995597961695245, ; hash 0x8d94c4f1a09b100d, from name: libaot-Xamarin.GooglePlayServices.Location
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 280
	%struct.DSOCacheEntry {
		i64 10206107640526170315, ; hash 0x8da360d324f668cb, from name: libaot-Xamarin.Android.Arch.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 281
	%struct.DSOCacheEntry {
		i64 10207954440838677834, ; hash 0x8da9f07ad98f854a, from name: mono-native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 282
	%struct.DSOCacheEntry {
		i64 10242645741811660067, ; hash 0x8e253008c8d9f523, from name: aot-Xamarin.Android.Support.v7.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 283
	%struct.DSOCacheEntry {
		i64 10271858835099427274, ; hash 0x8e8cf930190f21ca, from name: DevExpress.Mobile.Core.Android.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 284
	%struct.DSOCacheEntry {
		i64 10292495633574558669, ; hash 0x8ed64a3f2b787bcd, from name: libaot-Xamarin.Android.Support.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 285
	%struct.DSOCacheEntry {
		i64 10299619285503704674, ; hash 0x8eef992ba235fe62, from name: aot-WebSocket4Net
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 286
	%struct.DSOCacheEntry {
		i64 10346703248572197335, ; hash 0x8f96dfc90f86a9d7, from name: aot-Mono.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 287
	%struct.DSOCacheEntry {
		i64 10356807666685550219, ; hash 0x8fbac5b33bd59e8b, from name: libaot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 288
	%struct.DSOCacheEntry {
		i64 10362999876018488193, ; hash 0x8fd0c57b517fc381, from name: libaot-Xamarin.Android.Support.v4.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 289
	%struct.DSOCacheEntry {
		i64 10411662399408588532, ; hash 0x907da7c9f60a46f4, from name: libaot-DevExpress.Mobile.Grid.Android.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 290
	%struct.DSOCacheEntry {
		i64 10427440586454126344, ; hash 0x90b5b5f76816cf08, from name: aot-Xamarin.Android.Arch.Lifecycle.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 291
	%struct.DSOCacheEntry {
		i64 10484257811042239597, ; hash 0x917f90ee60c9846d, from name: aot-Lottie.Forms.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 292
	%struct.DSOCacheEntry {
		i64 10484826484908863027, ; hash 0x918196231499ae33, from name: xamarin-debug-app-helper
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 293
	%struct.DSOCacheEntry {
		i64 10485499968073098055, ; hash 0x9183faaa995de347, from name: aot-Xamarin.Android.Support.v7.MediaRouter
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 294
	%struct.DSOCacheEntry {
		i64 10522207351759231212, ; hash 0x920663d65e9cd8ec, from name: Xamarin.Android.Support.v4.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 295
	%struct.DSOCacheEntry {
		i64 10561557058910284153, ; hash 0x92923030035de979, from name: libaot-Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 296
	%struct.DSOCacheEntry {
		i64 10611629297602817936, ; hash 0x9344149f93be6f90, from name: aot-Xamarin.Android.Support.Transition
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 297
	%struct.DSOCacheEntry {
		i64 10768355749520290223, ; hash 0x9570e280413131af, from name: aot-Xamarin.Android.Support.v7.Palette.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 298
	%struct.DSOCacheEntry {
		i64 10771536273257030204, ; hash 0x957c2f2ba4b8623c, from name: aot-Xamarin.Android.Support.v7.Palette
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 299
	%struct.DSOCacheEntry {
		i64 10775409704848971057, ; hash 0x9589f20936d1d531, from name: Xamarin.Forms.Maps
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 300
	%struct.DSOCacheEntry {
		i64 10801746551169130168, ; hash 0x95e78342183c9eb8, from name: libaot-UXDivers.Artina.Shared.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 301
	%struct.DSOCacheEntry {
		i64 10829236861320421322, ; hash 0x96492d8cb391dfca, from name: libaot-Toasts.Forms.Plugin.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 302
	%struct.DSOCacheEntry {
		i64 10850923258212604222, ; hash 0x9696393672c9593e, from name: Xamarin.Android.Arch.Lifecycle.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 303
	%struct.DSOCacheEntry {
		i64 10854420896771355473, ; hash 0x96a2a64be2a23351, from name: aot-SocketIoClientDotNet.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 304
	%struct.DSOCacheEntry {
		i64 10982289612551143790, ; hash 0x9868ee374892c16e, from name: aot-Plugin.Connectivity.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 305
	%struct.DSOCacheEntry {
		i64 10985341717977427589, ; hash 0x9873c616f452ee85, from name: aot-Lottie
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 306
	%struct.DSOCacheEntry {
		i64 11023048688141570732, ; hash 0x98f9bc61168392ac, from name: System.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 307
	%struct.DSOCacheEntry {
		i64 11037814507248023548, ; hash 0x992e31d0412bf7fc, from name: System.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 308
	%struct.DSOCacheEntry {
		i64 11063900969707219733, ; hash 0x998adf50197fab15, from name: libaot-System.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 309
	%struct.DSOCacheEntry {
		i64 11088121158735816328, ; hash 0x99e0eb724cf0e688, from name: libaot-UXDivers.Artina.Shared.Base.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 310
	%struct.DSOCacheEntry {
		i64 11171288529418637049, ; hash 0x9b0863babf64cef9, from name: aot-Plugin.Settings.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 311
	%struct.DSOCacheEntry {
		i64 11208669316361498963, ; hash 0x9b8d315b6e8c3153, from name: libaot-FFImageLoading
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 312
	%struct.DSOCacheEntry {
		i64 11210987144983044956, ; hash 0x9b956d68f62f635c, from name: libaot-Xamarin.Android.Arch.Core.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 313
	%struct.DSOCacheEntry {
		i64 11252724615079487003, ; hash 0x9c29b56afd1b661b, from name: aot-Plugin.Connectivity.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 314
	%struct.DSOCacheEntry {
		i64 11270596618290860596, ; hash 0x9c6933e8fff21234, from name: libaot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 315
	%struct.DSOCacheEntry {
		i64 11324533492344754247, ; hash 0x9d28d3361a391047, from name: libaot-Plugin.Connectivity.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 316
	%struct.DSOCacheEntry {
		i64 11357581860300263664, ; hash 0x9d9e3c86e29e10f0, from name: aot-FFImageLoading.Forms.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 317
	%struct.DSOCacheEntry {
		i64 11376461258732682436, ; hash 0x9de14f3d5fc13cc4, from name: Xamarin.Android.Support.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 318
	%struct.DSOCacheEntry {
		i64 11395105072750394936, ; hash 0x9e238bb09789fe38, from name: Xamarin.Android.Support.v7.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 319
	%struct.DSOCacheEntry {
		i64 11398019558505627056, ; hash 0x9e2de6662faebdb0, from name: libaot-FormsViewGroup.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 320
	%struct.DSOCacheEntry {
		i64 11444370155346000636, ; hash 0x9ed292057b7afafc, from name: Xamarin.Forms.Maps.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 321
	%struct.DSOCacheEntry {
		i64 11449197902807702460, ; hash 0x9ee3b8d508001bbc, from name: aot-UXDivers.Artina.Shared.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 322
	%struct.DSOCacheEntry {
		i64 11455004273159125692, ; hash 0x9ef859b1fa3b3abc, from name: aot-UXDivers.Effects.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 323
	%struct.DSOCacheEntry {
		i64 11468676103134815411, ; hash 0x9f28ec26f35ca4b3, from name: libaot-Xamarin.Forms.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 324
	%struct.DSOCacheEntry {
		i64 11502082660092107344, ; hash 0x9f9f9b3d1bf85a50, from name: Xamarin.GooglePlayServices.Location.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 325
	%struct.DSOCacheEntry {
		i64 11521729796983092563, ; hash 0x9fe56834a335f553, from name: libmonodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 326
	%struct.DSOCacheEntry {
		i64 11557754129944451209, ; hash 0xa065642544a49889, from name: System.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 327
	%struct.DSOCacheEntry {
		i64 11564272885845679077, ; hash 0xa07c8ceb66835be5, from name: aot-Xamarin.Android.Support.Vector.Drawable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 328
	%struct.DSOCacheEntry {
		i64 11575256371452467757, ; hash 0xa0a392576c805a2d, from name: aot-Xamarin.Android.Support.Media.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 329
	%struct.DSOCacheEntry {
		i64 11679862455993127734, ; hash 0xa21735056ae45336, from name: libaot-DevExpress.Mobile.Core.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 330
	%struct.DSOCacheEntry {
		i64 11783453153500368349, ; hash 0xa3873c3631d88ddd, from name: CasosTotalizadores
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 331
	%struct.DSOCacheEntry {
		i64 11805766896659882188, ; hash 0xa3d68271607a60cc, from name: Plugin.Connectivity
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 332
	%struct.DSOCacheEntry {
		i64 11846332969256999943, ; hash 0xa466a1122b8fdc07, from name: aot-System.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 333
	%struct.DSOCacheEntry {
		i64 11896519601329237956, ; hash 0xa518ed8c04b36fc4, from name: aot-Xamarin.Android.Support.v7.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 334
	%struct.DSOCacheEntry {
		i64 11905546682503808667, ; hash 0xa538ffa12378469b, from name: aot-System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 335
	%struct.DSOCacheEntry {
		i64 11909085194873014816, ; hash 0xa54591e340450a20, from name: System.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 336
	%struct.DSOCacheEntry {
		i64 11949219802464515130, ; hash 0xa5d42819c4f5f43a, from name: aot-System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 337
	%struct.DSOCacheEntry {
		i64 11964870038168239629, ; hash 0xa60bc1e838bb7e0d, from name: aot-FFImageLoading.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 338
	%struct.DSOCacheEntry {
		i64 11970807847660761140, ; hash 0xa620da503a473034, from name: FFImageLoading.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 339
	%struct.DSOCacheEntry {
		i64 11974755358697558772, ; hash 0xa62ee08dc35f92f4, from name: UXDivers.Artina.Shared.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 340
	%struct.DSOCacheEntry {
		i64 11993328620439020478, ; hash 0xa670dcd63fcb23be, from name: Xamarin.Android.Support.v7.MediaRouter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 341
	%struct.DSOCacheEntry {
		i64 12076793617565080169, ; hash 0xa79963cf40abda69, from name: libaot-FFImageLoading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 342
	%struct.DSOCacheEntry {
		i64 12149628651578489921, ; hash 0xa89c26e31a3e7c41, from name: aot-UXDivers.Effects.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 343
	%struct.DSOCacheEntry {
		i64 12156610951293867847, ; hash 0xa8b4f540707e9747, from name: CasosTotalizadores.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 344
	%struct.DSOCacheEntry {
		i64 12173441707462773849, ; hash 0xa8f0c0bc3b3e4c59, from name: aot-System.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 345
	%struct.DSOCacheEntry {
		i64 12270192781745332849, ; hash 0xaa487b53217e2271, from name: libaot-Xamarin.GooglePlayServices.Basement.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 346
	%struct.DSOCacheEntry {
		i64 12299321273609848463, ; hash 0xaaaff788a3eb868f, from name: libaot-System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 347
	%struct.DSOCacheEntry {
		i64 12353925377965028523, ; hash 0xab71f5ad6749f4ab, from name: Plugin.Connectivity.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 348
	%struct.DSOCacheEntry {
		i64 12414517682055257633, ; hash 0xac493a0e90b59e21, from name: Xamarin.Android.Support.Core.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 349
	%struct.DSOCacheEntry {
		i64 12444329152694526762, ; hash 0xacb3236e7665232a, from name: libaot-Xamarin.Android.Support.Annotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 350
	%struct.DSOCacheEntry {
		i64 12517594088963136022, ; hash 0xadb76d80bb2d5a16, from name: Xamarin.Android.Support.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 351
	%struct.DSOCacheEntry {
		i64 12523457838497327269, ; hash 0xadcc428d4f36e8a5, from name: libaot-Xamarin.Android.Arch.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 352
	%struct.DSOCacheEntry {
		i64 12568601679441068061, ; hash 0xae6ca4a2da76801d, from name: aot-Xamarin.Android.Support.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 353
	%struct.DSOCacheEntry {
		i64 12592929074702335642, ; hash 0xaec31245f3523e9a, from name: UXDivers.Effects.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 354
	%struct.DSOCacheEntry {
		i64 12676217268711470545, ; hash 0xafeaf871c53835d1, from name: aot-DevExpress.Mobile.Grid.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 355
	%struct.DSOCacheEntry {
		i64 12704269318333514606, ; hash 0xb04ea1a28a29c36e, from name: aot-Xamarin.Forms.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 356
	%struct.DSOCacheEntry {
		i64 12707072764677039266, ; hash 0xb058975ac19da4a2, from name: aot-CasosTotalizadores
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 357
	%struct.DSOCacheEntry {
		i64 12710918940190102373, ; hash 0xb066416e46d0d365, from name: libaot-Plugin.Connectivity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 358
	%struct.DSOCacheEntry {
		i64 12741141464430857930, ; hash 0xb0d1a0a80c66ceca, from name: libaot-Plugin.Settings
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 359
	%struct.DSOCacheEntry {
		i64 12754509462774022160, ; hash 0xb1011ec7b5010010, from name: libaot-UXDivers.Artina.Shared.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 360
	%struct.DSOCacheEntry {
		i64 12781667299182476634, ; hash 0xb1619ab03cff7d5a, from name: FFImageLoading.Forms.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 361
	%struct.DSOCacheEntry {
		i64 12796654387464192908, ; hash 0xb196d95da63f438c, from name: libaot-Lottie
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 362
	%struct.DSOCacheEntry {
		i64 12850675458574079858, ; hash 0xb256c53e68235772, from name: aot-UXDivers.Artina.Shared.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 363
	%struct.DSOCacheEntry {
		i64 12889686992882090412, ; hash 0xb2e15e070cb5c1ac, from name: aot-UXDivers.Artina.Shared
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 364
	%struct.DSOCacheEntry {
		i64 12952608645614506925, ; hash 0xb3c0e8eff48193ad, from name: Xamarin.Android.Support.Core.Utils
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 365
	%struct.DSOCacheEntry {
		i64 12964673882120879242, ; hash 0xb3ebc634bc997c8a, from name: libaot-System.Runtime.Serialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 366
	%struct.DSOCacheEntry {
		i64 12982100160454185566, ; hash 0xb429af505669d25e, from name: WebSocket4Net.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 367
	%struct.DSOCacheEntry {
		i64 12988035350267542210, ; hash 0xb43ec55666e9bac2, from name: xa-internal-api
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 368
	%struct.DSOCacheEntry {
		i64 12996638905122625135, ; hash 0xb45d56399ddb166f, from name: System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 369
	%struct.DSOCacheEntry {
		i64 12997116296769870886, ; hash 0xb45f086905689c26, from name: aot-Toasts.Forms.Plugin.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 370
	%struct.DSOCacheEntry {
		i64 13083632295013665842, ; hash 0xb5926640941e4c32, from name: System.Net.Http.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 371
	%struct.DSOCacheEntry {
		i64 13116162918083669100, ; hash 0xb605f8ae7c872c6c, from name: aot-DevExpress.Mobile.Core.Android.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 372
	%struct.DSOCacheEntry {
		i64 13147806612051147366, ; hash 0xb67664741ed73a66, from name: libaot-UXDivers.Artina.Shared.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 373
	%struct.DSOCacheEntry {
		i64 13159724058464640502, ; hash 0xb6a0bb4ed6f25df6, from name: libaot-FFImageLoading.Forms.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 374
	%struct.DSOCacheEntry {
		i64 13228540643748725632, ; hash 0xb79537a0af75c380, from name: libaot-SocketIoClientDotNet.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 375
	%struct.DSOCacheEntry {
		i64 13239871303603979843, ; hash 0xb7bd78cd83340643, from name: libaot-Xamarin.Android.Support.v7.MediaRouter
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 376
	%struct.DSOCacheEntry {
		i64 13259805138707313225, ; hash 0xb8044a852b8c7249, from name: aot-Toasts.Forms.Plugin.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 377
	%struct.DSOCacheEntry {
		i64 13286014975085780728, ; hash 0xb861683a3e821ef8, from name: aot-Xamarin.Android.Support.v7.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 378
	%struct.DSOCacheEntry {
		i64 13343226877734096688, ; hash 0xb92caa265cc90f30, from name: libaot-Xamarin.Forms.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 379
	%struct.DSOCacheEntry {
		i64 13354613588229297446, ; hash 0xb9551e4d7f031526, from name: aot-UXDivers.Artina.Shared.Base.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 380
	%struct.DSOCacheEntry {
		i64 13370592475155966277, ; hash 0xb98de304062ea945, from name: System.Runtime.Serialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 381
	%struct.DSOCacheEntry {
		i64 13380041663667534323, ; hash 0xb9af7500aad479f3, from name: libmono-btls-shared.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 382
	%struct.DSOCacheEntry {
		i64 13543373903092985014, ; hash 0xbbf3bacf1a272cb6, from name: libaot-Xamarin.Forms.Maps.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 383
	%struct.DSOCacheEntry {
		i64 13561533016983292176, ; hash 0xbc343e6d47054910, from name: aot-UXDivers.Effects
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 384
	%struct.DSOCacheEntry {
		i64 13586636776859507217, ; hash 0xbc8d6e29d8f81a11, from name: Plugin.Permissions.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 385
	%struct.DSOCacheEntry {
		i64 13588476131331312025, ; hash 0xbc93f70beee08999, from name: aot-Xamarin.Android.Support.Vector.Drawable
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 386
	%struct.DSOCacheEntry {
		i64 13604000475523164505, ; hash 0xbccb1e5afbcda959, from name: aot-Toasts.Forms.Plugin.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 387
	%struct.DSOCacheEntry {
		i64 13646140969043279215, ; hash 0xbd60d4e936babd6f, from name: aot-FormsViewGroup.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 388
	%struct.DSOCacheEntry {
		i64 13672566334420206186, ; hash 0xbdbeb6a40b14c26a, from name: aot-Xamarin.Android.Support.v7.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 389
	%struct.DSOCacheEntry {
		i64 13701089264222207624, ; hash 0xbe240c1825e1fe88, from name: libaot-Mono.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 390
	%struct.DSOCacheEntry {
		i64 13701384277615137636, ; hash 0xbe2518684e5f5364, from name: Xamarin.GooglePlayServices.Maps.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 391
	%struct.DSOCacheEntry {
		i64 13739044888507636575, ; hash 0xbeaae48894a4db5f, from name: libaot-Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 392
	%struct.DSOCacheEntry {
		i64 13754475766734256579, ; hash 0xbee1b6d5e3e9f9c3, from name: libaot-DevExpress.Mobile.Grid.Android.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 393
	%struct.DSOCacheEntry {
		i64 13784476538474629663, ; hash 0xbf4c4c60e27c8a1f, from name: aot-mscorlib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 394
	%struct.DSOCacheEntry {
		i64 13839218887849320298, ; hash 0xc00ec84153229f6a, from name: aot-Xamarin.Forms.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 395
	%struct.DSOCacheEntry {
		i64 13842731643823728203, ; hash 0xc01b43168f2c264b, from name: libaot-System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 396
	%struct.DSOCacheEntry {
		i64 13856099392739027244, ; hash 0xc04ac0fc24b7292c, from name: FormsViewGroup.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 397
	%struct.DSOCacheEntry {
		i64 13939236653676014491, ; hash 0xc1721de21e76ab9b, from name: aot-FFImageLoading.Transformations
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 398
	%struct.DSOCacheEntry {
		i64 13940548702660846120, ; hash 0xc176c72f5421e228, from name: libaot-Xamarin.Android.Support.v7.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 399
	%struct.DSOCacheEntry {
		i64 13967638549803255703, ; hash 0xc1d70541e0134797, from name: Xamarin.Forms.Platform.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 400
	%struct.DSOCacheEntry {
		i64 14046551201175776327, ; hash 0xc2ef5fe5496b2c47, from name: aot-Xamarin.Android.Support.Annotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 401
	%struct.DSOCacheEntry {
		i64 14102079389910076542, ; hash 0xc3b4a67d35f28c7e, from name: UXDivers.Artina.Shared
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 402
	%struct.DSOCacheEntry {
		i64 14137679297576702812, ; hash 0xc433206aa074135c, from name: aot-System.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 403
	%struct.DSOCacheEntry {
		i64 14238282449064093418, ; hash 0xc5988a732424e6ea, from name: aot-DevExpress.Mobile.Core.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 404
	%struct.DSOCacheEntry {
		i64 14267242366184657376, ; hash 0xc5ff6d5748d711e0, from name: Toasts.Forms.Plugin.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 405
	%struct.DSOCacheEntry {
		i64 14343849879592858025, ; hash 0xc70f9777f0a971a9, from name: System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 406
	%struct.DSOCacheEntry {
		i64 14351510784141839845, ; hash 0xc72acf0546f64de5, from name: aot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 407
	%struct.DSOCacheEntry {
		i64 14369828458497533121, ; hash 0xc76be2d9300b64c1, from name: Xamarin.Android.Support.Vector.Drawable
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 408
	%struct.DSOCacheEntry {
		i64 14388958984733160160, ; hash 0xc7afd9f5ecaf72e0, from name: libaot-Toasts.Forms.Plugin.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 409
	%struct.DSOCacheEntry {
		i64 14400856865250966808, ; hash 0xc7da1f051a877d18, from name: Xamarin.Android.Support.Core.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 410
	%struct.DSOCacheEntry {
		i64 14407337225322813049, ; hash 0xc7f124df82a0d679, from name: libaot-Xamarin.Android.Support.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 411
	%struct.DSOCacheEntry {
		i64 14417201800325380005, ; hash 0xc81430a6db8437a5, from name: EngineIoClientDotNet.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 412
	%struct.DSOCacheEntry {
		i64 14424844866220670826, ; hash 0xc82f57facf333f6a, from name: monosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 413
	%struct.DSOCacheEntry {
		i64 14438130591759984391, ; hash 0xc85e8b46d68de707, from name: Lottie.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 414
	%struct.DSOCacheEntry {
		i64 14445083824966892175, ; hash 0xc8773f3499e47a8f, from name: Xamarin.Android.Support.v7.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 415
	%struct.DSOCacheEntry {
		i64 14495028659131156207, ; hash 0xc928afc47c9e86ef, from name: aot-Plugin.Permissions.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 416
	%struct.DSOCacheEntry {
		i64 14504888576175694032, ; hash 0xc94bb74f5192e0d0, from name: Plugin.Media.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 417
	%struct.DSOCacheEntry {
		i64 14546047806753258392, ; hash 0xc9ddf1697760bb98, from name: libaot-EngineIoClientDotNet.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 418
	%struct.DSOCacheEntry {
		i64 14573042884976692136, ; hash 0xca3dd94ae791cba8, from name: UXDivers.Effects
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 419
	%struct.DSOCacheEntry {
		i64 14604015534980822382, ; hash 0xcaabe2c0f0d1756e, from name: aot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 420
	%struct.DSOCacheEntry {
		i64 14613375034728387395, ; hash 0xcacd232b4a8c1343, from name: libaot-Mono.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 421
	%struct.DSOCacheEntry {
		i64 14754337614704314161, ; hash 0xccc1efe384a28731, from name: libaot-Plugin.Settings.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 422
	%struct.DSOCacheEntry {
		i64 14761684953864571564, ; hash 0xccdc0a4139538aac, from name: Lottie.Forms.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 423
	%struct.DSOCacheEntry {
		i64 14809900564945508170, ; hash 0xcd875618fc6f174a, from name: libxa-internal-api.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 424
	%struct.DSOCacheEntry {
		i64 14810449846798621097, ; hash 0xcd8949aaa22b99a9, from name: aot-WebSocket4Net.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 425
	%struct.DSOCacheEntry {
		i64 14844621254809745237, ; hash 0xce02b0618e25f755, from name: libaot-FFImageLoading.Transformations
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 426
	%struct.DSOCacheEntry {
		i64 14863479084972378448, ; hash 0xce45af7a4a3a0950, from name: aot-Xamarin.GooglePlayServices.Maps.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 427
	%struct.DSOCacheEntry {
		i64 14893269241334065748, ; hash 0xceaf857791f7ea54, from name: aot-Xamarin.Forms.Maps
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 428
	%struct.DSOCacheEntry {
		i64 14901592158629472963, ; hash 0xcecd171dc2db2ac3, from name: libaot-Xamarin.Android.Support.v7.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 429
	%struct.DSOCacheEntry {
		i64 14904841612725085086, ; hash 0xced8a27a3ff0639e, from name: aot-Plugin.Permissions.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 430
	%struct.DSOCacheEntry {
		i64 15053928356398764554, ; hash 0xd0ea4c14bd54120a, from name: aot-Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 431
	%struct.DSOCacheEntry {
		i64 15103584714958771650, ; hash 0xd19ab646aa2315c2, from name: libaot-Xamarin.Android.Support.Design.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 432
	%struct.DSOCacheEntry {
		i64 15188640517174936311, ; hash 0xd2c8e413d75142f7, from name: Xamarin.Android.Arch.Core.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 433
	%struct.DSOCacheEntry {
		i64 15216590919956829692, ; hash 0xd32c30d21c7615fc, from name: mscorlib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 434
	%struct.DSOCacheEntry {
		i64 15223138012495999962, ; hash 0xd343735de191f3da, from name: aot-Xamarin.Android.Support.Media.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 435
	%struct.DSOCacheEntry {
		i64 15277420590004642858, ; hash 0xd4044d155777242a, from name: aot-UXDivers.Artina.Shared.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 436
	%struct.DSOCacheEntry {
		i64 15309925798133332993, ; hash 0xd477c865df537c01, from name: aot-Lottie.Forms.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 437
	%struct.DSOCacheEntry {
		i64 15310975490199493051, ; hash 0xd47b83165a0d99bb, from name: aot-Plugin.Media
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 438
	%struct.DSOCacheEntry {
		i64 15326452432051871014, ; hash 0xd4b27f48af5f9d26, from name: libaot-Xamarin.GooglePlayServices.Basement
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 439
	%struct.DSOCacheEntry {
		i64 15338808286434540176, ; hash 0xd4de64de36bfba90, from name: libaot-Xamarin.Android.Arch.Lifecycle.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 440
	%struct.DSOCacheEntry {
		i64 15394198501530322172, ; hash 0xd5a32df9a590c4fc, from name: libaot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 441
	%struct.DSOCacheEntry {
		i64 15418891414777631748, ; hash 0xd5fae80c88241404, from name: Xamarin.Android.Support.Transition
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 442
	%struct.DSOCacheEntry {
		i64 15420320794302889280, ; hash 0xd5fffc0fe2fe3d40, from name: aot-System.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 443
	%struct.DSOCacheEntry {
		i64 15457813392950723921, ; hash 0xd6852f61c31a8551, from name: Xamarin.Android.Support.Media.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 444
	%struct.DSOCacheEntry {
		i64 15599084397433935389, ; hash 0xd87b149caa63561d, from name: Xamarin.Forms.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 445
	%struct.DSOCacheEntry {
		i64 15611451938799092070, ; hash 0xd8a704d348340166, from name: libaot-Xamarin.Android.Support.v7.Palette.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 446
	%struct.DSOCacheEntry {
		i64 15810740023422282496, ; hash 0xdb6b08484c22eb00, from name: Xamarin.Forms.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 447
	%struct.DSOCacheEntry {
		i64 15817820344157854568, ; hash 0xdb842fcbee79db68, from name: aot-System.ServiceModel.Internals
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 448
	%struct.DSOCacheEntry {
		i64 15849105598259299349, ; hash 0xdbf35591c7e68415, from name: aot-DevExpress.Mobile.Grid.Android.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 449
	%struct.DSOCacheEntry {
		i64 15888829264832018062, ; hash 0xdc807608a324b68e, from name: libaot-Xamarin.GooglePlayServices.Maps
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 450
	%struct.DSOCacheEntry {
		i64 15913576714817725190, ; hash 0xdcd861b558a36306, from name: aot-Xamarin.Android.Support.v7.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 451
	%struct.DSOCacheEntry {
		i64 15980979601559935709, ; hash 0xddc7d846d9be5add, from name: Xamarin.Android.Arch.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 452
	%struct.DSOCacheEntry {
		i64 16154507427712707110, ; hash 0xe03056ea4e39aa26, from name: System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 453
	%struct.DSOCacheEntry {
		i64 16196734811562174927, ; hash 0xe0c65c7f445de9cf, from name: libaot-Xamarin.Android.Support.v7.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 454
	%struct.DSOCacheEntry {
		i64 16225118301042901514, ; hash 0xe12b3321645a020a, from name: DevExpress.Mobile.Grid.Android.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 455
	%struct.DSOCacheEntry {
		i64 16234281033188157608, ; hash 0xe14bc096370aa8a8, from name: libaot-Xamarin.Android.Arch.Lifecycle.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 456
	%struct.DSOCacheEntry {
		i64 16237324308683727476, ; hash 0xe156906e01e8a274, from name: libmono-native
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 457
	%struct.DSOCacheEntry {
		i64 16257317422869950876, ; hash 0xe19d980fa6eeb19c, from name: DevExpress.Mobile.Core.Android.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 458
	%struct.DSOCacheEntry {
		i64 16305131738799255698, ; hash 0xe24776ed9b13b092, from name: libaot-DevExpress.Mobile.Grid.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 459
	%struct.DSOCacheEntry {
		i64 16366575316213272407, ; hash 0xe321c18948918f57, from name: Xamarin.GooglePlayServices.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 460
	%struct.DSOCacheEntry {
		i64 16370739617262809100, ; hash 0xe3308cf22d5d300c, from name: aot-Lottie.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 461
	%struct.DSOCacheEntry {
		i64 16381405407414385978, ; hash 0xe356716cf698fd3a, from name: Plugin.Settings
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 462
	%struct.DSOCacheEntry {
		i64 16563502763386620195, ; hash 0xe5dd62018fdc4923, from name: aot-CasosTotalizadores.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 463
	%struct.DSOCacheEntry {
		i64 16587993013165085709, ; hash 0xe63463c22e5dd40d, from name: libaot-Xamarin.GooglePlayServices.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 464
	%struct.DSOCacheEntry {
		i64 16681423359400012391, ; hash 0xe7805229d4f0ea67, from name: libaot-Xamarin.Forms.Maps
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 465
	%struct.DSOCacheEntry {
		i64 16687522843226958423, ; hash 0xe795fd9c93c26a57, from name: aot-System.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 466
	%struct.DSOCacheEntry {
		i64 16717189724135467099, ; hash 0xe7ff637b8de7a85b, from name: libmonosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 467
	%struct.DSOCacheEntry {
		i64 16743998817570992831, ; hash 0xe85ea23608e132bf, from name: Xamarin.Forms.Maps.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 468
	%struct.DSOCacheEntry {
		i64 16768067971893542065, ; hash 0xe8b424faba51bcb1, from name: libaot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 469
	%struct.DSOCacheEntry {
		i64 16804602679676381986, ; hash 0xe935f11a41b02b22, from name: monosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 470
	%struct.DSOCacheEntry {
		i64 16833383113903931215, ; hash 0xe99c30c1484d7f4f, from name: mscorlib
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 471
	%struct.DSOCacheEntry {
		i64 16895806301542741427, ; hash 0xea79f6503d42f5b3, from name: Plugin.Permissions
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 472
	%struct.DSOCacheEntry {
		i64 16925732630818318584, ; hash 0xeae44826bf29e8f8, from name: libaot-Lottie.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 473
	%struct.DSOCacheEntry {
		i64 16945704051569549822, ; hash 0xeb2b3c0d7eb361fe, from name: UXDivers.Effects.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 474
	%struct.DSOCacheEntry {
		i64 16989203637347086287, ; hash 0xebc5c6b20cd8efcf, from name: WebSocket4Net
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 475
	%struct.DSOCacheEntry {
		i64 16989764869531577419, ; hash 0xebc7c52219d72c4b, from name: aot-Xamarin.GooglePlayServices.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 476
	%struct.DSOCacheEntry {
		i64 17009591894298689098, ; hash 0xec0e35b50a097e4a, from name: Xamarin.Android.Support.Animated.Vector.Drawable
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 477
	%struct.DSOCacheEntry {
		i64 17014538925174064622, ; hash 0xec1fc9016c0e85ee, from name: FFImageLoading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 478
	%struct.DSOCacheEntry {
		i64 17057022022027533070, ; hash 0xecb6b72834f75b0e, from name: libaot-Xamarin.Android.Support.Animated.Vector.Drawable
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 479
	%struct.DSOCacheEntry {
		i64 17122165065888179780, ; hash 0xed9e266909de2644, from name: aot-FFImageLoading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 480
	%struct.DSOCacheEntry {
		i64 17124705692820578889, ; hash 0xeda72d18d7ae2249, from name: Lottie.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 481
	%struct.DSOCacheEntry {
		i64 17146377013933841195, ; hash 0xedf42b0c7c731b2b, from name: DevExpress.Mobile.Core.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 482
	%struct.DSOCacheEntry {
		i64 17164731672679297551, ; hash 0xee3560837ef2320f, from name: aot-Lottie.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 483
	%struct.DSOCacheEntry {
		i64 17172272284620379844, ; hash 0xee502aa9071556c4, from name: Lottie.Forms.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 484
	%struct.DSOCacheEntry {
		i64 17218975366187541878, ; hash 0xeef616dd91cf6576, from name: Plugin.CurrentActivity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 485
	%struct.DSOCacheEntry {
		i64 17229975394123076935, ; hash 0xef1d2b55276d5547, from name: aot-FFImageLoading.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 486
	%struct.DSOCacheEntry {
		i64 17238569155936077394, ; hash 0xef3bb3503f934652, from name: Plugin.Connectivity.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 487
	%struct.DSOCacheEntry {
		i64 17265281921385142356, ; hash 0xef9a9a6e9f229854, from name: aot-System.Net.Http.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 488
	%struct.DSOCacheEntry {
		i64 17309541862275468045, ; hash 0xf037d89d25aecb0d, from name: Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 489
	%struct.DSOCacheEntry {
		i64 17353272485882399419, ; hash 0xf0d3356263948abb, from name: Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 490
	%struct.DSOCacheEntry {
		i64 17385151973004961448, ; hash 0xf144779be52466a8, from name: libaot-System.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 491
	%struct.DSOCacheEntry {
		i64 17474527379847198219, ; hash 0xf281fe1165a1360b, from name: libaot-System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 492
	%struct.DSOCacheEntry {
		i64 17507423178764399280, ; hash 0xf2f6dc9f6eb132b0, from name: libaot-Plugin.Media
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 493
	%struct.DSOCacheEntry {
		i64 17530049609275726408, ; hash 0xf3473f3dcfdada48, from name: aot-Plugin.Permissions
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 494
	%struct.DSOCacheEntry {
		i64 17606634444368436353, ; hash 0xf45754be42bcdc81, from name: aot-Plugin.CurrentActivity
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 495
	%struct.DSOCacheEntry {
		i64 17643123953373031521, ; hash 0xf4d8f7c220fc2c61, from name: FFImageLoading
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 496
	%struct.DSOCacheEntry {
		i64 17700327150769387356, ; hash 0xf5a431c365cfb75c, from name: System.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 497
	%struct.DSOCacheEntry {
		i64 17760961058993581169, ; hash 0xf67b9bfb46dbac71, from name: Xamarin.Android.Arch.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 498
	%struct.DSOCacheEntry {
		i64 17798155118191535816, ; hash 0xf6ffbfc8051b66c8, from name: Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 499
	%struct.DSOCacheEntry {
		i64 17836080663574960013, ; hash 0xf7867cdd2999578d, from name: aot-DevExpress.Mobile.Grid.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 500
	%struct.DSOCacheEntry {
		i64 17861454590255681673, ; hash 0xf7e0a250d7f5d089, from name: libaot-Xamarin.Android.Support.Transition.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 501
	%struct.DSOCacheEntry {
		i64 17861688616034315864, ; hash 0xf7e17729375d2e58, from name: CasosTotalizadores.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 502
	%struct.DSOCacheEntry {
		i64 17882897186074144999, ; hash 0xf82cd03e3ac830e7, from name: FormsViewGroup
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 503
	%struct.DSOCacheEntry {
		i64 17892583153371645159, ; hash 0xf84f39943adb04e7, from name: libaot-UXDivers.Effects.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 504
	%struct.DSOCacheEntry {
		i64 17927396739616034639, ; hash 0xf8cae859ec4f4f4f, from name: libaot-System.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 505
	%struct.DSOCacheEntry {
		i64 17947624217716767869, ; hash 0xf912c522ab34bc7d, from name: FFImageLoading.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 506
	%struct.DSOCacheEntry {
		i64 17948097183519794948, ; hash 0xf914734b99e2e704, from name: aot-Lottie.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 507
	%struct.DSOCacheEntry {
		i64 17969331831154222830, ; hash 0xf95fe418471126ee, from name: Xamarin.GooglePlayServices.Maps
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 508
	%struct.DSOCacheEntry {
		i64 17992138291436877871, ; hash 0xf9b0ea731acc782f, from name: libaot-Xamarin.Android.Support.Core.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 509
	%struct.DSOCacheEntry {
		i64 18052507308219945764, ; hash 0xfa8763c02397d324, from name: libaot-UXDivers.Artina.Shared
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 510
	%struct.DSOCacheEntry {
		i64 18090425465832348288, ; hash 0xfb0e1a1d2e9e1a80, from name: Xamarin.Android.Support.v7.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 511
	%struct.DSOCacheEntry {
		i64 18094530737844163321, ; hash 0xfb1cafd64e9692f9, from name: libaot-Lottie.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 512
	%struct.DSOCacheEntry {
		i64 18129706240313446616, ; hash 0xfb99a7c53010d0d8, from name: aot-Xamarin.Android.Support.Transition.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 513
	%struct.DSOCacheEntry {
		i64 18159348248433750737, ; hash 0xfc02f705048172d1, from name: aot-Plugin.Settings
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 514
	%struct.DSOCacheEntry {
		i64 18239045742442485177, ; hash 0xfd1e1b77d86295b9, from name: Plugin.Connectivity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 515
	%struct.DSOCacheEntry {
		i64 18242845430146289205, ; hash 0xfd2b9b43943a4e35, from name: libaot-System.Net.Http.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 516
	%struct.DSOCacheEntry {
		i64 18288433369154311143, ; hash 0xfdcd9140c2d7d3e7, from name: mono-profiler-log
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 517
	%struct.DSOCacheEntry {
		i64 18290895073477857760, ; hash 0xfdd65028f69711e0, from name: libmono-profiler-log.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 518
	%struct.DSOCacheEntry {
		i64 18327710550568384473, ; hash 0xfe591ba430ceb7d9, from name: libaot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 519
	%struct.DSOCacheEntry {
		i64 18429853707184601104, ; hash 0xffc3fe4d17277810, from name: aot-UXDivers.Artina.Shared.Base.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}
], align 16; end of 'dso_cache' array

@__XamarinAndroidBundledAssembly_name_0 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_1 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_2 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_3 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_4 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_5 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_6 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_7 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_8 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_9 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_10 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_11 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_12 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_13 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_14 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_15 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_16 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_17 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_18 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_19 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_20 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_21 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_22 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_23 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_24 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_25 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_26 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_27 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_28 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_29 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_30 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_31 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_32 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_33 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_34 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_35 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_36 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_37 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_38 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_39 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_40 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_41 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_42 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_43 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_44 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_45 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_46 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_47 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_48 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_49 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_50 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_51 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_52 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_53 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_54 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_55 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_56 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_57 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_58 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_59 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_60 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_61 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_62 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_63 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_64 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_65 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_66 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_67 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_68 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_69 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_70 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_71 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_72 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_73 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_74 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_75 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_76 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_77 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_78 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_79 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_80 = internal global [63 x i8] zeroinitializer, align 16
@__XamarinAndroidBundledAssembly_name_81 = internal global [63 x i8] zeroinitializer, align 16


; Bundled assembly name buffers, all 63 bytes long
@bundled_assemblies = local_unnamed_addr global [82 x %struct.XamarinAndroidBundledAssembly] [
	; 0
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_0, i32 0, i32 0); name
	}, 
	; 1
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_1, i32 0, i32 0); name
	}, 
	; 2
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_2, i32 0, i32 0); name
	}, 
	; 3
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_3, i32 0, i32 0); name
	}, 
	; 4
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_4, i32 0, i32 0); name
	}, 
	; 5
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_5, i32 0, i32 0); name
	}, 
	; 6
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_6, i32 0, i32 0); name
	}, 
	; 7
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_7, i32 0, i32 0); name
	}, 
	; 8
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_8, i32 0, i32 0); name
	}, 
	; 9
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_9, i32 0, i32 0); name
	}, 
	; 10
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_10, i32 0, i32 0); name
	}, 
	; 11
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_11, i32 0, i32 0); name
	}, 
	; 12
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_12, i32 0, i32 0); name
	}, 
	; 13
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_13, i32 0, i32 0); name
	}, 
	; 14
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_14, i32 0, i32 0); name
	}, 
	; 15
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_15, i32 0, i32 0); name
	}, 
	; 16
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_16, i32 0, i32 0); name
	}, 
	; 17
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_17, i32 0, i32 0); name
	}, 
	; 18
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_18, i32 0, i32 0); name
	}, 
	; 19
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_19, i32 0, i32 0); name
	}, 
	; 20
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_20, i32 0, i32 0); name
	}, 
	; 21
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_21, i32 0, i32 0); name
	}, 
	; 22
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_22, i32 0, i32 0); name
	}, 
	; 23
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_23, i32 0, i32 0); name
	}, 
	; 24
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_24, i32 0, i32 0); name
	}, 
	; 25
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_25, i32 0, i32 0); name
	}, 
	; 26
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_26, i32 0, i32 0); name
	}, 
	; 27
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_27, i32 0, i32 0); name
	}, 
	; 28
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_28, i32 0, i32 0); name
	}, 
	; 29
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_29, i32 0, i32 0); name
	}, 
	; 30
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_30, i32 0, i32 0); name
	}, 
	; 31
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_31, i32 0, i32 0); name
	}, 
	; 32
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_32, i32 0, i32 0); name
	}, 
	; 33
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_33, i32 0, i32 0); name
	}, 
	; 34
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_34, i32 0, i32 0); name
	}, 
	; 35
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_35, i32 0, i32 0); name
	}, 
	; 36
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_36, i32 0, i32 0); name
	}, 
	; 37
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_37, i32 0, i32 0); name
	}, 
	; 38
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_38, i32 0, i32 0); name
	}, 
	; 39
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_39, i32 0, i32 0); name
	}, 
	; 40
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_40, i32 0, i32 0); name
	}, 
	; 41
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_41, i32 0, i32 0); name
	}, 
	; 42
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_42, i32 0, i32 0); name
	}, 
	; 43
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_43, i32 0, i32 0); name
	}, 
	; 44
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_44, i32 0, i32 0); name
	}, 
	; 45
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_45, i32 0, i32 0); name
	}, 
	; 46
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_46, i32 0, i32 0); name
	}, 
	; 47
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_47, i32 0, i32 0); name
	}, 
	; 48
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_48, i32 0, i32 0); name
	}, 
	; 49
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_49, i32 0, i32 0); name
	}, 
	; 50
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_50, i32 0, i32 0); name
	}, 
	; 51
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_51, i32 0, i32 0); name
	}, 
	; 52
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_52, i32 0, i32 0); name
	}, 
	; 53
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_53, i32 0, i32 0); name
	}, 
	; 54
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_54, i32 0, i32 0); name
	}, 
	; 55
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_55, i32 0, i32 0); name
	}, 
	; 56
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_56, i32 0, i32 0); name
	}, 
	; 57
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_57, i32 0, i32 0); name
	}, 
	; 58
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_58, i32 0, i32 0); name
	}, 
	; 59
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_59, i32 0, i32 0); name
	}, 
	; 60
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_60, i32 0, i32 0); name
	}, 
	; 61
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_61, i32 0, i32 0); name
	}, 
	; 62
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_62, i32 0, i32 0); name
	}, 
	; 63
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_63, i32 0, i32 0); name
	}, 
	; 64
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_64, i32 0, i32 0); name
	}, 
	; 65
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_65, i32 0, i32 0); name
	}, 
	; 66
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_66, i32 0, i32 0); name
	}, 
	; 67
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_67, i32 0, i32 0); name
	}, 
	; 68
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_68, i32 0, i32 0); name
	}, 
	; 69
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_69, i32 0, i32 0); name
	}, 
	; 70
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_70, i32 0, i32 0); name
	}, 
	; 71
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_71, i32 0, i32 0); name
	}, 
	; 72
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_72, i32 0, i32 0); name
	}, 
	; 73
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_73, i32 0, i32 0); name
	}, 
	; 74
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_74, i32 0, i32 0); name
	}, 
	; 75
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_75, i32 0, i32 0); name
	}, 
	; 76
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_76, i32 0, i32 0); name
	}, 
	; 77
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_77, i32 0, i32 0); name
	}, 
	; 78
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_78, i32 0, i32 0); name
	}, 
	; 79
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_79, i32 0, i32 0); name
	}, 
	; 80
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_80, i32 0, i32 0); name
	}, 
	; 81
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; apk_fd
		i32 0, ; data_offset
		i32 0, ; data_size
		i8* null, ; data
		i32 63, ; name_length
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__XamarinAndroidBundledAssembly_name_81, i32 0, i32 0); name
	}
], align 16; end of 'bundled_assemblies' array


; Assembly store individual assembly data
@assembly_store_bundled_assemblies = local_unnamed_addr global [0 x %struct.AssemblyStoreSingleAssemblyRuntimeData] zeroinitializer, align 8

; Assembly store data
@assembly_stores = local_unnamed_addr global [0 x %struct.AssemblyStoreRuntimeData] zeroinitializer, align 8

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
