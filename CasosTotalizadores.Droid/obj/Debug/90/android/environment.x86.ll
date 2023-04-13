; ModuleID = 'obj\Debug\90\android\environment.x86.ll'
source_filename = "obj\Debug\90\android\environment.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@mono_aot_mode_name = local_unnamed_addr constant i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__mono_aot_mode_name, i32 0, i32 0), align 4

; app_environment_variables
@__app_environment_variables_n_0.0 = internal constant [15 x i8] c"MONO_GC_PARAMS\00", align 1
@__app_environment_variables_v_0.1 = internal constant [21 x i8] c"major=marksweep-conc\00", align 1
@__app_environment_variables_n_1.2 = internal constant [15 x i8] c"MONO_LOG_LEVEL\00", align 1
@__app_environment_variables_v_1.3 = internal constant [5 x i8] c"info\00", align 1
@__app_environment_variables_n_2.4 = internal constant [17 x i8] c"XAMARIN_BUILD_ID\00", align 1
@__app_environment_variables_v_2.5 = internal constant [37 x i8] c"4f94d59e-f4e3-4bee-9065-f1b09514e90e\00", align 1
@__app_environment_variables_n_3.6 = internal constant [28 x i8] c"XA_HTTP_CLIENT_HANDLER_TYPE\00", align 1
@__app_environment_variables_v_3.7 = internal constant [51 x i8] c"System.Net.Http.HttpClientHandler, System.Net.Http\00", align 1
@__app_environment_variables_n_4.8 = internal constant [16 x i8] c"XA_TLS_PROVIDER\00", align 1
@__app_environment_variables_v_4.9 = internal constant [5 x i8] c"btls\00", align 1
@__app_environment_variables_n_5.10 = internal constant [29 x i8] c"__XA_PACKAGE_NAMING_POLICY__\00", align 1
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
], align 4

; app_system_properties
@app_system_properties = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__ApplicationConfig_android_package_name.0 = internal constant [23 x i8] c"com.casostotalizadores\00", align 1

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
}, align 4

@__DSOCacheEntry_name.1 = internal constant [30 x i8] c"libaot-Newtonsoft.Json.dll.so\00", align 1
@__DSOCacheEntry_name.2 = internal constant [41 x i8] c"libaot-System.Net.Http.Extensions.dll.so\00", align 1
@__DSOCacheEntry_name.3 = internal constant [33 x i8] c"libaot-CasosTotalizadores.dll.so\00", align 1
@__DSOCacheEntry_name.4 = internal constant [43 x i8] c"libaot-UXDivers.Artina.Shared.Droid.dll.so\00", align 1
@__DSOCacheEntry_name.5 = internal constant [54 x i8] c"libaot-Xamarin.Android.Support.Vector.Drawable.dll.so\00", align 1
@__DSOCacheEntry_name.6 = internal constant [46 x i8] c"libaot-Xamarin.GooglePlayServices.Maps.dll.so\00", align 1
@__DSOCacheEntry_name.7 = internal constant [27 x i8] c"libaot-Plugin.Media.dll.so\00", align 1
@__DSOCacheEntry_name.8 = internal constant [33 x i8] c"libaot-Plugin.Permissions.dll.so\00", align 1
@__DSOCacheEntry_name.9 = internal constant [40 x i8] c"libaot-Plugin.Media.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.10 = internal constant [47 x i8] c"libaot-Toasts.Forms.Plugin.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.11 = internal constant [43 x i8] c"libaot-DevExpress.Mobile.Grid.v17.1.dll.so\00", align 1
@__DSOCacheEntry_name.12 = internal constant [43 x i8] c"libaot-System.Runtime.Serialization.dll.so\00", align 1
@__DSOCacheEntry_name.13 = internal constant [47 x i8] c"libaot-Plugin.Connectivity.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.14 = internal constant [31 x i8] c"libxamarin-debug-app-helper.so\00", align 1
@__DSOCacheEntry_name.15 = internal constant [35 x i8] c"libaot-SocketIoClientDotNet.dll.so\00", align 1
@__DSOCacheEntry_name.16 = internal constant [51 x i8] c"libaot-DevExpress.Mobile.Core.Android.v17.1.dll.so\00", align 1
@__DSOCacheEntry_name.17 = internal constant [24 x i8] c"libmono-profiler-log.so\00", align 1
@__DSOCacheEntry_name.18 = internal constant [23 x i8] c"libaot-mscorlib.dll.so\00", align 1
@__DSOCacheEntry_name.19 = internal constant [30 x i8] c"libaot-Plugin.Settings.dll.so\00", align 1
@__DSOCacheEntry_name.20 = internal constant [39 x i8] c"libaot-CasosTotalizadores.Droid.dll.so\00", align 1
@__DSOCacheEntry_name.21 = internal constant [26 x i8] c"libaot-System.Core.dll.so\00", align 1
@__DSOCacheEntry_name.22 = internal constant [47 x i8] c"libaot-Xamarin.Android.Arch.Core.Common.dll.so\00", align 1
@__DSOCacheEntry_name.23 = internal constant [41 x i8] c"libaot-System.Net.Http.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.24 = internal constant [31 x i8] c"libaot-Microsoft.CSharp.dll.so\00", align 1
@__DSOCacheEntry_name.25 = internal constant [28 x i8] c"libaot-WebSocket4Net.dll.so\00", align 1
@__DSOCacheEntry_name.26 = internal constant [53 x i8] c"libaot-Xamarin.Android.Arch.Lifecycle.Runtime.dll.so\00", align 1
@__DSOCacheEntry_name.27 = internal constant [41 x i8] c"libaot-Xamarin.Android.Support.v4.dll.so\00", align 1
@__DSOCacheEntry_name.28 = internal constant [41 x i8] c"libaot-Xamarin.Forms.Maps.Android.dll.so\00", align 1
@__DSOCacheEntry_name.29 = internal constant [33 x i8] c"libaot-Xamarin.Forms.Core.dll.so\00", align 1
@__DSOCacheEntry_name.30 = internal constant [46 x i8] c"libaot-Xamarin.GooglePlayServices.Base.dll.so\00", align 1
@__DSOCacheEntry_name.31 = internal constant [34 x i8] c"libaot-Plugin.Connectivity.dll.so\00", align 1
@__DSOCacheEntry_name.32 = internal constant [16 x i8] c"libmonodroid.so\00", align 1
@__DSOCacheEntry_name.33 = internal constant [37 x i8] c"libaot-UXDivers.Artina.Shared.dll.so\00", align 1
@__DSOCacheEntry_name.34 = internal constant [46 x i8] c"libaot-Plugin.Permissions.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.35 = internal constant [33 x i8] c"libaot-Lottie.Forms.Droid.dll.so\00", align 1
@__DSOCacheEntry_name.36 = internal constant [27 x i8] c"libaot-Mono.Android.dll.so\00", align 1
@__DSOCacheEntry_name.37 = internal constant [49 x i8] c"libaot-Xamarin.Android.Support.Transition.dll.so\00", align 1
@__DSOCacheEntry_name.38 = internal constant [45 x i8] c"libaot-Xamarin.Forms.Platform.Android.dll.so\00", align 1
@__DSOCacheEntry_name.39 = internal constant [37 x i8] c"libaot-UXDivers.Effects.Droid.dll.so\00", align 1
@__DSOCacheEntry_name.40 = internal constant [33 x i8] c"libaot-Xamarin.Forms.Maps.dll.so\00", align 1
@__DSOCacheEntry_name.41 = internal constant [30 x i8] c"libaot-System.Numerics.dll.so\00", align 1
@__DSOCacheEntry_name.42 = internal constant [22 x i8] c"libxa-internal-api.so\00", align 1
@__DSOCacheEntry_name.43 = internal constant [31 x i8] c"libaot-UXDivers.Effects.dll.so\00", align 1
@__DSOCacheEntry_name.44 = internal constant [50 x i8] c"libaot-Xamarin.GooglePlayServices.Basement.dll.so\00", align 1
@__DSOCacheEntry_name.45 = internal constant [29 x i8] c"libaot-FFImageLoading.dll.so\00", align 1
@__DSOCacheEntry_name.46 = internal constant [63 x i8] c"libaot-Xamarin.Android.Support.Animated.Vector.Drawable.dll.so\00", align 1
@__DSOCacheEntry_name.47 = internal constant [46 x i8] c"libaot-Xamarin.Android.Support.Core.UI.dll.so\00", align 1
@__DSOCacheEntry_name.48 = internal constant [35 x i8] c"libaot-FFImageLoading.Forms.dll.so\00", align 1
@__DSOCacheEntry_name.49 = internal constant [26 x i8] c"libaot-System.Data.dll.so\00", align 1
@__DSOCacheEntry_name.50 = internal constant [21 x i8] c"libaot-Lottie.dll.so\00", align 1
@__DSOCacheEntry_name.51 = internal constant [48 x i8] c"libaot-UXDivers.Artina.Shared.Base.Droid.dll.so\00", align 1
@__DSOCacheEntry_name.52 = internal constant [40 x i8] c"libaot-Toasts.Forms.Plugin.Droid.dll.so\00", align 1
@__DSOCacheEntry_name.53 = internal constant [45 x i8] c"libaot-Xamarin.Android.Support.Compat.dll.so\00", align 1
@__DSOCacheEntry_name.54 = internal constant [38 x i8] c"libaot-FFImageLoading.Platform.dll.so\00", align 1
@__DSOCacheEntry_name.55 = internal constant [37 x i8] c"libaot-Plugin.CurrentActivity.dll.so\00", align 1
@__DSOCacheEntry_name.56 = internal constant [45 x i8] c"libaot-Xamarin.Android.Support.Design.dll.so\00", align 1
@__DSOCacheEntry_name.57 = internal constant [52 x i8] c"libaot-Xamarin.Android.Arch.Lifecycle.Common.dll.so\00", align 1
@__DSOCacheEntry_name.58 = internal constant [33 x i8] c"libaot-Xamarin.Forms.Xaml.dll.so\00", align 1
@__DSOCacheEntry_name.59 = internal constant [54 x i8] c"libaot-Xamarin.Android.Support.v7.RecyclerView.dll.so\00", align 1
@__DSOCacheEntry_name.60 = internal constant [28 x i8] c"libaot-Mono.Security.dll.so\00", align 1
@__DSOCacheEntry_name.61 = internal constant [50 x i8] c"libaot-Xamarin.GooglePlayServices.Location.dll.so\00", align 1
@__DSOCacheEntry_name.62 = internal constant [41 x i8] c"libaot-FFImageLoading.Forms.Droid.dll.so\00", align 1
@__DSOCacheEntry_name.63 = internal constant [50 x i8] c"libaot-Xamarin.Android.Support.Annotations.dll.so\00", align 1
@__DSOCacheEntry_name.64 = internal constant [45 x i8] c"libaot-FFImageLoading.Transformations.dll.so\00", align 1
@__DSOCacheEntry_name.65 = internal constant [51 x i8] c"libaot-Xamarin.Android.Support.v7.AppCompat.dll.so\00", align 1
@__DSOCacheEntry_name.66 = internal constant [29 x i8] c"libaot-FormsViewGroup.dll.so\00", align 1
@__DSOCacheEntry_name.67 = internal constant [44 x i8] c"libaot-System.ServiceModel.Internals.dll.so\00", align 1
@__DSOCacheEntry_name.68 = internal constant [37 x i8] c"libaot-Xamarin.Forms.Platform.dll.so\00", align 1
@__DSOCacheEntry_name.69 = internal constant [35 x i8] c"libaot-EngineIoClientDotNet.dll.so\00", align 1
@__DSOCacheEntry_name.70 = internal constant [43 x i8] c"libaot-DevExpress.Mobile.Core.v17.1.dll.so\00", align 1
@__DSOCacheEntry_name.71 = internal constant [53 x i8] c"libaot-Xamarin.Android.Support.v7.MediaRouter.dll.so\00", align 1
@__DSOCacheEntry_name.72 = internal constant [25 x i8] c"libaot-System.Xml.dll.so\00", align 1
@__DSOCacheEntry_name.73 = internal constant [51 x i8] c"libaot-Xamarin.Android.Support.Media.Compat.dll.so\00", align 1
@__DSOCacheEntry_name.74 = internal constant [21 x i8] c"libaot-System.dll.so\00", align 1
@__DSOCacheEntry_name.75 = internal constant [49 x i8] c"libaot-Xamarin.Android.Support.Core.Utils.dll.so\00", align 1
@__DSOCacheEntry_name.76 = internal constant [30 x i8] c"libaot-System.Net.Http.dll.so\00", align 1
@__DSOCacheEntry_name.77 = internal constant [50 x i8] c"libaot-Xamarin.Android.Support.v7.CardView.dll.so\00", align 1
@__DSOCacheEntry_name.78 = internal constant [51 x i8] c"libaot-DevExpress.Mobile.Grid.Android.v17.1.dll.so\00", align 1
@__DSOCacheEntry_name.79 = internal constant [42 x i8] c"libaot-UXDivers.Artina.Shared.Base.dll.so\00", align 1
@__DSOCacheEntry_name.80 = internal constant [23 x i8] c"libmono-btls-shared.so\00", align 1
@__DSOCacheEntry_name.81 = internal constant [27 x i8] c"libaot-Lottie.Forms.dll.so\00", align 1
@__DSOCacheEntry_name.82 = internal constant [18 x i8] c"libmono-native.so\00", align 1
@__DSOCacheEntry_name.83 = internal constant [49 x i8] c"libaot-Xamarin.Android.Support.v7.Palette.dll.so\00", align 1
@__DSOCacheEntry_name.84 = internal constant [47 x i8] c"libaot-Xamarin.GooglePlayServices.Tasks.dll.so\00", align 1
@__DSOCacheEntry_name.85 = internal constant [47 x i8] c"libaot-Xamarin.Android.Support.Fragment.dll.so\00", align 1
@__DSOCacheEntry_name.86 = internal constant [30 x i8] c"libaot-System.Xml.Linq.dll.so\00", align 1
@__DSOCacheEntry_name.87 = internal constant [43 x i8] c"libaot-Plugin.Settings.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.88 = internal constant [27 x i8] c"libaot-Java.Interop.dll.so\00", align 1
@__DSOCacheEntry_name.89 = internal constant [19 x i8] c"libmonosgen-2.0.so\00", align 1

; dso_cache
@dso_cache = local_unnamed_addr global [520 x %struct.DSOCacheEntry] [
	; 0
	%struct.DSOCacheEntry {
		i64 1541521, ; hash 0x178591, from name: libaot-Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1
	%struct.DSOCacheEntry {
		i64 13706622, ; hash 0xd1257e, from name: aot-System.Net.Http.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 2
	%struct.DSOCacheEntry {
		i64 20873333, ; hash 0x13e8075, from name: libaot-CasosTotalizadores.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 3
	%struct.DSOCacheEntry {
		i64 21837131, ; hash 0x14d354b, from name: libaot-UXDivers.Artina.Shared.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 4
	%struct.DSOCacheEntry {
		i64 21990549, ; hash 0x14f8c95, from name: Xamarin.Android.Support.Vector.Drawable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 5
	%struct.DSOCacheEntry {
		i64 23122263, ; hash 0x160d157, from name: libaot-Xamarin.GooglePlayServices.Maps.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 6
	%struct.DSOCacheEntry {
		i64 30754885, ; hash 0x1d54845, from name: Plugin.Media.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 7
	%struct.DSOCacheEntry {
		i64 39852199, ; hash 0x26018a7, from name: Plugin.Permissions
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 8
	%struct.DSOCacheEntry {
		i64 42291943, ; hash 0x28552e7, from name: aot-Plugin.Media.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 9
	%struct.DSOCacheEntry {
		i64 42727907, ; hash 0x28bf9e3, from name: aot-Toasts.Forms.Plugin.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 10
	%struct.DSOCacheEntry {
		i64 44778276, ; hash 0x2ab4324, from name: libaot-DevExpress.Mobile.Grid.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 11
	%struct.DSOCacheEntry {
		i64 68635670, ; hash 0x4174c16, from name: aot-System.Runtime.Serialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 12
	%struct.DSOCacheEntry {
		i64 76932014, ; hash 0x495e3ae, from name: libaot-Plugin.Connectivity.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 13
	%struct.DSOCacheEntry {
		i64 98567696, ; hash 0x5e00610, from name: libxamarin-debug-app-helper.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 14
	%struct.DSOCacheEntry {
		i64 103320845, ; hash 0x6288d0d, from name: SocketIoClientDotNet
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 15
	%struct.DSOCacheEntry {
		i64 106911544, ; hash 0x65f5738, from name: DevExpress.Mobile.Core.Android.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 16
	%struct.DSOCacheEntry {
		i64 134276555, ; hash 0x800e5cb, from name: libmono-profiler-log.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 17
	%struct.DSOCacheEntry {
		i64 135821890, ; hash 0x8187a42, from name: aot-mscorlib
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 18
	%struct.DSOCacheEntry {
		i64 148602241, ; hash 0x8db7d81, from name: libaot-Plugin.Settings.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 19
	%struct.DSOCacheEntry {
		i64 154468378, ; hash 0x935001a, from name: CasosTotalizadores.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 20
	%struct.DSOCacheEntry {
		i64 155189489, ; hash 0x94000f1, from name: aot-System.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 21
	%struct.DSOCacheEntry {
		i64 160529393, ; hash 0x9917bf1, from name: Xamarin.Android.Arch.Core.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 22
	%struct.DSOCacheEntry {
		i64 180851856, ; hash 0xac79490, from name: aot-DevExpress.Mobile.Grid.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 23
	%struct.DSOCacheEntry {
		i64 185010651, ; hash 0xb0709db, from name: System.Net.Http.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 24
	%struct.DSOCacheEntry {
		i64 197501317, ; hash 0xbc5a185, from name: libaot-Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 25
	%struct.DSOCacheEntry {
		i64 205943382, ; hash 0xc467256, from name: WebSocket4Net
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 26
	%struct.DSOCacheEntry {
		i64 208060056, ; hash 0xc66be98, from name: aot-Xamarin.Android.Arch.Lifecycle.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 27
	%struct.DSOCacheEntry {
		i64 210318476, ; hash 0xc89348c, from name: libaot-Xamarin.Android.Support.v4.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 28
	%struct.DSOCacheEntry {
		i64 212497893, ; hash 0xcaa75e5, from name: Xamarin.Forms.Maps.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 29
	%struct.DSOCacheEntry {
		i64 214632834, ; hash 0xccb0982, from name: libaot-Xamarin.Forms.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 30
	%struct.DSOCacheEntry {
		i64 219130465, ; hash 0xd0faa61, from name: Xamarin.Android.Support.v4
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 31
	%struct.DSOCacheEntry {
		i64 220846655, ; hash 0xd29da3f, from name: aot-Xamarin.GooglePlayServices.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 32
	%struct.DSOCacheEntry {
		i64 220989545, ; hash 0xd2c0869, from name: Plugin.Connectivity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 33
	%struct.DSOCacheEntry {
		i64 229294244, ; hash 0xdaac0a4, from name: monodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 34
	%struct.DSOCacheEntry {
		i64 247499072, ; hash 0xec08940, from name: aot-Xamarin.Android.Arch.Core.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 35
	%struct.DSOCacheEntry {
		i64 251384980, ; hash 0xefbd494, from name: UXDivers.Artina.Shared.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 36
	%struct.DSOCacheEntry {
		i64 252546307, ; hash 0xf0d8d03, from name: DevExpress.Mobile.Core.Android.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 37
	%struct.DSOCacheEntry {
		i64 259954313, ; hash 0xf7e9689, from name: Plugin.Permissions.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 38
	%struct.DSOCacheEntry {
		i64 269556525, ; hash 0x10111b2d, from name: libaot-Lottie.Forms.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 39
	%struct.DSOCacheEntry {
		i64 270825677, ; hash 0x102478cd, from name: aot-Plugin.Media.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 40
	%struct.DSOCacheEntry {
		i64 292529153, ; hash 0x116fa401, from name: libaot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 41
	%struct.DSOCacheEntry {
		i64 293914992, ; hash 0x1184c970, from name: Xamarin.Android.Support.Transition
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 42
	%struct.DSOCacheEntry {
		i64 300626474, ; hash 0x11eb322a, from name: libaot-Xamarin.Forms.Platform.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 43
	%struct.DSOCacheEntry {
		i64 302518794, ; hash 0x1208120a, from name: UXDivers.Effects.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 44
	%struct.DSOCacheEntry {
		i64 304528198, ; hash 0x1226bb46, from name: libaot-Plugin.Media.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 45
	%struct.DSOCacheEntry {
		i64 319314094, ; hash 0x130858ae, from name: Xamarin.Forms.Maps
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 46
	%struct.DSOCacheEntry {
		i64 321597661, ; hash 0x132b30dd, from name: System.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 47
	%struct.DSOCacheEntry {
		i64 322645766, ; hash 0x133b2f06, from name: System.Runtime.Serialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 48
	%struct.DSOCacheEntry {
		i64 326796272, ; hash 0x137a83f0, from name: Xamarin.Forms.Maps.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 49
	%struct.DSOCacheEntry {
		i64 331988322, ; hash 0x13c9bd62, from name: xa-internal-api
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 50
	%struct.DSOCacheEntry {
		i64 344981838, ; hash 0x1490014e, from name: libaot-Plugin.Media.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 51
	%struct.DSOCacheEntry {
		i64 358472506, ; hash 0x155ddb3a, from name: libaot-UXDivers.Effects.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 52
	%struct.DSOCacheEntry {
		i64 362792438, ; hash 0x159fc5f6, from name: libaot-Xamarin.GooglePlayServices.Basement.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 53
	%struct.DSOCacheEntry {
		i64 364356784, ; hash 0x15b7a4b0, from name: FFImageLoading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 54
	%struct.DSOCacheEntry {
		i64 388313361, ; hash 0x17253111, from name: Xamarin.Android.Support.Animated.Vector.Drawable
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 55
	%struct.DSOCacheEntry {
		i64 388947526, ; hash 0x172ede46, from name: DevExpress.Mobile.Grid.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 56
	%struct.DSOCacheEntry {
		i64 389971796, ; hash 0x173e7f54, from name: Xamarin.Android.Support.Core.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 57
	%struct.DSOCacheEntry {
		i64 405038923, ; hash 0x1824674b, from name: libaot-FFImageLoading.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 58
	%struct.DSOCacheEntry {
		i64 410235293, ; hash 0x1873b19d, from name: Xamarin.Android.Arch.Lifecycle.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 59
	%struct.DSOCacheEntry {
		i64 410311426, ; hash 0x1874db02, from name: Xamarin.Forms.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 60
	%struct.DSOCacheEntry {
		i64 438393095, ; hash 0x1a215907, from name: aot-System.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 61
	%struct.DSOCacheEntry {
		i64 442704954, ; hash 0x1a63243a, from name: Lottie
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 62
	%struct.DSOCacheEntry {
		i64 448963994, ; hash 0x1ac2a59a, from name: libaot-UXDivers.Artina.Shared.Base.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 63
	%struct.DSOCacheEntry {
		i64 465846621, ; hash 0x1bc4415d, from name: mscorlib
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 64
	%struct.DSOCacheEntry {
		i64 467708117, ; hash 0x1be0a8d5, from name: aot-Toasts.Forms.Plugin.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 65
	%struct.DSOCacheEntry {
		i64 473015189, ; hash 0x1c31a395, from name: Xamarin.Android.Support.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 66
	%struct.DSOCacheEntry {
		i64 481997837, ; hash 0x1cbab40d, from name: libaot-WebSocket4Net.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 67
	%struct.DSOCacheEntry {
		i64 514659665, ; hash 0x1ead1551, from name: Xamarin.Android.Support.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 68
	%struct.DSOCacheEntry {
		i64 520798577, ; hash 0x1f0ac171, from name: FFImageLoading.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 69
	%struct.DSOCacheEntry {
		i64 534905310, ; hash 0x1fe201de, from name: libaot-Plugin.CurrentActivity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 70
	%struct.DSOCacheEntry {
		i64 539750087, ; hash 0x202beec7, from name: Xamarin.Android.Support.Design
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 71
	%struct.DSOCacheEntry {
		i64 540487007, ; hash 0x20372d5f, from name: libaot-Xamarin.Android.Support.Animated.Vector.Drawable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 72
	%struct.DSOCacheEntry {
		i64 544886891, ; hash 0x207a506b, from name: aot-Plugin.CurrentActivity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 73
	%struct.DSOCacheEntry {
		i64 550368715, ; hash 0x20cdf5cb, from name: System.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 74
	%struct.DSOCacheEntry {
		i64 553215075, ; hash 0x20f96463, from name: Xamarin.Android.Arch.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 75
	%struct.DSOCacheEntry {
		i64 553320055, ; hash 0x20fafe77, from name: aot-Xamarin.Forms.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 76
	%struct.DSOCacheEntry {
		i64 571524804, ; hash 0x2210c6c4, from name: Xamarin.Android.Support.v7.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 77
	%struct.DSOCacheEntry {
		i64 575540603, ; hash 0x224e0d7b, from name: libaot-Xamarin.GooglePlayServices.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 78
	%struct.DSOCacheEntry {
		i64 604946211, ; hash 0x240ebf23, from name: aot-FFImageLoading.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 79
	%struct.DSOCacheEntry {
		i64 605070680, ; hash 0x2410a558, from name: aot-Mono.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 80
	%struct.DSOCacheEntry {
		i64 605757669, ; hash 0x241b20e5, from name: libaot-Xamarin.GooglePlayServices.Location
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 81
	%struct.DSOCacheEntry {
		i64 635990061, ; hash 0x25e8702d, from name: aot-System.Runtime.Serialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 82
	%struct.DSOCacheEntry {
		i64 640861789, ; hash 0x2632c65d, from name: aot-FFImageLoading.Forms.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 83
	%struct.DSOCacheEntry {
		i64 646790475, ; hash 0x268d3d4b, from name: libaot-Mono.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 84
	%struct.DSOCacheEntry {
		i64 653254759, ; hash 0x26efe067, from name: CasosTotalizadores.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 85
	%struct.DSOCacheEntry {
		i64 664190568, ; hash 0x2796be68, from name: aot-System.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 86
	%struct.DSOCacheEntry {
		i64 673803093, ; hash 0x28296b55, from name: aot-UXDivers.Artina.Shared.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 87
	%struct.DSOCacheEntry {
		i64 679820142, ; hash 0x28853b6e, from name: Plugin.Connectivity.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 88
	%struct.DSOCacheEntry {
		i64 689279727, ; hash 0x291592ef, from name: UXDivers.Artina.Shared.Base.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 89
	%struct.DSOCacheEntry {
		i64 692692150, ; hash 0x2949a4b6, from name: Xamarin.Android.Support.Annotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 90
	%struct.DSOCacheEntry {
		i64 698030881, ; hash 0x299b1b21, from name: FFImageLoading.Transformations
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 91
	%struct.DSOCacheEntry {
		i64 713151617, ; hash 0x2a81d481, from name: libxamarin-debug-app-helper
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 92
	%struct.DSOCacheEntry {
		i64 722039331, ; hash 0x2b097223, from name: libaot-Xamarin.Android.Support.v7.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 93
	%struct.DSOCacheEntry {
		i64 731452914, ; hash 0x2b9915f2, from name: libaot-FormsViewGroup.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 94
	%struct.DSOCacheEntry {
		i64 748366034, ; hash 0x2c9b28d2, from name: monodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 95
	%struct.DSOCacheEntry {
		i64 752785591, ; hash 0x2cde98b7, from name: libaot-System.ServiceModel.Internals
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 96
	%struct.DSOCacheEntry {
		i64 758174468, ; hash 0x2d30d304, from name: Xamarin.Forms.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 97
	%struct.DSOCacheEntry {
		i64 770924518, ; hash 0x2df35fe6, from name: aot-Xamarin.Android.Support.Design.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 98
	%struct.DSOCacheEntry {
		i64 775528118, ; hash 0x2e399eb6, from name: aot-Plugin.CurrentActivity
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 99
	%struct.DSOCacheEntry {
		i64 785916936, ; hash 0x2ed82408, from name: libaot-EngineIoClientDotNet.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 100
	%struct.DSOCacheEntry {
		i64 835979558, ; hash 0x31d40926, from name: aot-Xamarin.Forms.Platform.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 101
	%struct.DSOCacheEntry {
		i64 847645831, ; hash 0x32860c87, from name: aot-Plugin.Media
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 102
	%struct.DSOCacheEntry {
		i64 852004286, ; hash 0x32c88dbe, from name: libaot-Xamarin.GooglePlayServices.Basement
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 103
	%struct.DSOCacheEntry {
		i64 859655555, ; hash 0x333d4d83, from name: libaot-Xamarin.Forms.Maps.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 104
	%struct.DSOCacheEntry {
		i64 862647800, ; hash 0x336af5f8, from name: aot-Xamarin.Android.Support.Transition.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 105
	%struct.DSOCacheEntry {
		i64 862752302, ; hash 0x336c8e2e, from name: xa-internal-api.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 106
	%struct.DSOCacheEntry {
		i64 869597619, ; hash 0x33d501b3, from name: aot-Xamarin.Android.Support.Vector.Drawable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 107
	%struct.DSOCacheEntry {
		i64 883768302, ; hash 0x34ad3bee, from name: UXDivers.Artina.Shared.Base.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 108
	%struct.DSOCacheEntry {
		i64 895524893, ; hash 0x3560a01d, from name: aot-Xamarin.Forms.Maps
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 109
	%struct.DSOCacheEntry {
		i64 901638381, ; hash 0x35bde8ed, from name: libaot-Plugin.Permissions.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 110
	%struct.DSOCacheEntry {
		i64 905680937, ; hash 0x35fb9829, from name: aot-mscorlib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 111
	%struct.DSOCacheEntry {
		i64 913227312, ; hash 0x366ebe30, from name: Mono.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 112
	%struct.DSOCacheEntry {
		i64 913382283, ; hash 0x36711b8b, from name: Plugin.Settings
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 113
	%struct.DSOCacheEntry {
		i64 916631041, ; hash 0x36a2ae01, from name: libaot-DevExpress.Mobile.Core.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 114
	%struct.DSOCacheEntry {
		i64 919525363, ; hash 0x36ced7f3, from name: aot-Xamarin.Forms.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 115
	%struct.DSOCacheEntry {
		i64 922910587, ; hash 0x37027f7b, from name: Xamarin.Android.Support.v7.MediaRouter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 116
	%struct.DSOCacheEntry {
		i64 935102380, ; hash 0x37bc87ac, from name: aot-DevExpress.Mobile.Grid.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 117
	%struct.DSOCacheEntry {
		i64 935753800, ; hash 0x37c67848, from name: aot-Xamarin.Android.Support.Vector.Drawable
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 118
	%struct.DSOCacheEntry {
		i64 948077769, ; hash 0x388284c9, from name: aot-System.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 119
	%struct.DSOCacheEntry {
		i64 955402788, ; hash 0x38f24a24, from name: Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 120
	%struct.DSOCacheEntry {
		i64 957807352, ; hash 0x3916faf8, from name: Plugin.CurrentActivity
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 121
	%struct.DSOCacheEntry {
		i64 958213972, ; hash 0x391d2f54, from name: Xamarin.Android.Support.Media.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 122
	%struct.DSOCacheEntry {
		i64 965570903, ; hash 0x398d7157, from name: libaot-System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 123
	%struct.DSOCacheEntry {
		i64 970490240, ; hash 0x39d88180, from name: aot-Plugin.Media.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 124
	%struct.DSOCacheEntry {
		i64 982068289, ; hash 0x3a892c41, from name: aot-Xamarin.Android.Support.Core.Utils.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 125
	%struct.DSOCacheEntry {
		i64 992239438, ; hash 0x3b245f4e, from name: aot-Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 126
	%struct.DSOCacheEntry {
		i64 1000318620, ; hash 0x3b9fa69c, from name: libaot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 127
	%struct.DSOCacheEntry {
		i64 1005968847, ; hash 0x3bf5ddcf, from name: aot-UXDivers.Effects.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 128
	%struct.DSOCacheEntry {
		i64 1020712341, ; hash 0x3cd6d595, from name: aot-System.Net.Http.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 129
	%struct.DSOCacheEntry {
		i64 1043588566, ; hash 0x3e33e5d6, from name: libaot-Xamarin.Forms.Maps
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 130
	%struct.DSOCacheEntry {
		i64 1054437010, ; hash 0x3ed96e92, from name: libaot-System.Runtime.Serialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 131
	%struct.DSOCacheEntry {
		i64 1071209456, ; hash 0x3fd95bf0, from name: libaot-Xamarin.Android.Support.v7.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 132
	%struct.DSOCacheEntry {
		i64 1076071578, ; hash 0x40238c9a, from name: libaot-Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 133
	%struct.DSOCacheEntry {
		i64 1082646219, ; hash 0x4087decb, from name: libaot-Plugin.Connectivity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 134
	%struct.DSOCacheEntry {
		i64 1087098087, ; hash 0x40cbcce7, from name: aot-Xamarin.Android.Support.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 135
	%struct.DSOCacheEntry {
		i64 1090582960, ; hash 0x4100f9b0, from name: libaot-Lottie
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 136
	%struct.DSOCacheEntry {
		i64 1094003176, ; hash 0x413529e8, from name: libaot-DevExpress.Mobile.Grid.Android.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 137
	%struct.DSOCacheEntry {
		i64 1098259244, ; hash 0x41761b2c, from name: System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 138
	%struct.DSOCacheEntry {
		i64 1103000816, ; hash 0x41be74f0, from name: aot-EngineIoClientDotNet
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 139
	%struct.DSOCacheEntry {
		i64 1104002344, ; hash 0x41cdbd28, from name: Plugin.Media
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 140
	%struct.DSOCacheEntry {
		i64 1106913012, ; hash 0x41fa26f4, from name: libaot-CasosTotalizadores.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 141
	%struct.DSOCacheEntry {
		i64 1113288180, ; hash 0x425b6df4, from name: aot-Xamarin.Forms.Platform.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 142
	%struct.DSOCacheEntry {
		i64 1129431459, ; hash 0x4351c1a3, from name: libaot-UXDivers.Artina.Shared.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 143
	%struct.DSOCacheEntry {
		i64 1139299304, ; hash 0x43e853e8, from name: aot-UXDivers.Artina.Shared.Base.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 144
	%struct.DSOCacheEntry {
		i64 1141279138, ; hash 0x440689a2, from name: libaot-System.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 145
	%struct.DSOCacheEntry {
		i64 1146335126, ; hash 0x4453af96, from name: aot-Xamarin.Android.Support.Media.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 146
	%struct.DSOCacheEntry {
		i64 1151003844, ; hash 0x449aecc4, from name: libaot-Xamarin.Android.Support.Transition
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 147
	%struct.DSOCacheEntry {
		i64 1161469484, ; hash 0x453a9e2c, from name: aot-Lottie
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 148
	%struct.DSOCacheEntry {
		i64 1172542776, ; hash 0x45e39538, from name: libaot-System.ServiceModel.Internals.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 149
	%struct.DSOCacheEntry {
		i64 1193991461, ; hash 0x472add25, from name: libaot-UXDivers.Artina.Shared.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 150
	%struct.DSOCacheEntry {
		i64 1221610541, ; hash 0x48d04c2d, from name: libaot-Xamarin.Forms.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 151
	%struct.DSOCacheEntry {
		i64 1245083133, ; hash 0x4a3675fd, from name: aot-Plugin.Connectivity
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 152
	%struct.DSOCacheEntry {
		i64 1277412854, ; hash 0x4c23c5f6, from name: libaot-System.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 153
	%struct.DSOCacheEntry {
		i64 1285465351, ; hash 0x4c9ea507, from name: aot-System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 154
	%struct.DSOCacheEntry {
		i64 1291190990, ; hash 0x4cf602ce, from name: aot-Lottie.Forms.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 155
	%struct.DSOCacheEntry {
		i64 1291979425, ; hash 0x4d020aa1, from name: libaot-Xamarin.Android.Support.Annotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 156
	%struct.DSOCacheEntry {
		i64 1295752231, ; hash 0x4d3b9c27, from name: mono-btls-shared
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 157
	%struct.DSOCacheEntry {
		i64 1312924696, ; hash 0x4e41a418, from name: Lottie.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 158
	%struct.DSOCacheEntry {
		i64 1319400571, ; hash 0x4ea4747b, from name: libaot-SocketIoClientDotNet
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 159
	%struct.DSOCacheEntry {
		i64 1342113219, ; hash 0x4fff05c3, from name: mono-native
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 160
	%struct.DSOCacheEntry {
		i64 1345597573, ; hash 0x50343085, from name: aot-Xamarin.Android.Support.v7.Palette
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 161
	%struct.DSOCacheEntry {
		i64 1376113003, ; hash 0x5205d16b, from name: aot-Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 162
	%struct.DSOCacheEntry {
		i64 1383009688, ; hash 0x526f0d98, from name: aot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 163
	%struct.DSOCacheEntry {
		i64 1383778890, ; hash 0x527aca4a, from name: aot-UXDivers.Effects.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 164
	%struct.DSOCacheEntry {
		i64 1408867004, ; hash 0x53f99abc, from name: aot-Mono.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 165
	%struct.DSOCacheEntry {
		i64 1411707434, ; hash 0x5424f22a, from name: libaot-Xamarin.Forms.Maps.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 166
	%struct.DSOCacheEntry {
		i64 1419774530, ; hash 0x54a00a42, from name: libaot-UXDivers.Effects
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 167
	%struct.DSOCacheEntry {
		i64 1437513682, ; hash 0x55aeb7d2, from name: libaot-Xamarin.Android.Support.v7.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 168
	%struct.DSOCacheEntry {
		i64 1438276081, ; hash 0x55ba59f1, from name: Xamarin.GooglePlayServices.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 169
	%struct.DSOCacheEntry {
		i64 1445445088, ; hash 0x5627bde0, from name: Xamarin.Android.Support.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 170
	%struct.DSOCacheEntry {
		i64 1448487292, ; hash 0x5656297c, from name: DevExpress.Mobile.Core.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 171
	%struct.DSOCacheEntry {
		i64 1450167472, ; hash 0x566fccb0, from name: aot-Xamarin.Android.Support.v7.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 172
	%struct.DSOCacheEntry {
		i64 1453722762, ; hash 0x56a60c8a, from name: Xamarin.Android.Support.Transition.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 173
	%struct.DSOCacheEntry {
		i64 1460219004, ; hash 0x57092c7c, from name: Xamarin.Forms.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 174
	%struct.DSOCacheEntry {
		i64 1487620432, ; hash 0x58ab4950, from name: aot-Xamarin.Android.Support.v7.MediaRouter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 175
	%struct.DSOCacheEntry {
		i64 1488488195, ; hash 0x58b88703, from name: Toasts.Forms.Plugin.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 176
	%struct.DSOCacheEntry {
		i64 1492656362, ; hash 0x58f820ea, from name: libaot-Xamarin.Android.Support.Core.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 177
	%struct.DSOCacheEntry {
		i64 1505467903, ; hash 0x59bb9dff, from name: aot-System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 178
	%struct.DSOCacheEntry {
		i64 1516058787, ; hash 0x5a5d38a3, from name: xamarin-debug-app-helper.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 179
	%struct.DSOCacheEntry {
		i64 1525675244, ; hash 0x5aeff4ec, from name: aot-Xamarin.Android.Support.v7.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 180
	%struct.DSOCacheEntry {
		i64 1535450622, ; hash 0x5b851dfe, from name: libaot-FormsViewGroup
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 181
	%struct.DSOCacheEntry {
		i64 1536260266, ; hash 0x5b9178aa, from name: libaot-Xamarin.Android.Support.Core.Utils
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 182
	%struct.DSOCacheEntry {
		i64 1557407134, ; hash 0x5cd4259e, from name: libaot-Xamarin.Android.Arch.Core.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 183
	%struct.DSOCacheEntry {
		i64 1557434217, ; hash 0x5cd48f69, from name: libaot-Xamarin.Android.Support.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 184
	%struct.DSOCacheEntry {
		i64 1560567337, ; hash 0x5d045e29, from name: aot-Xamarin.Android.Support.Design
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 185
	%struct.DSOCacheEntry {
		i64 1561687565, ; hash 0x5d15760d, from name: libaot-CasosTotalizadores
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 186
	%struct.DSOCacheEntry {
		i64 1565248321, ; hash 0x5d4bcb41, from name: Plugin.Settings.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 187
	%struct.DSOCacheEntry {
		i64 1577223973, ; hash 0x5e028725, from name: libaot-Xamarin.Android.Support.Annotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 188
	%struct.DSOCacheEntry {
		i64 1596965798, ; hash 0x5f2fc3a6, from name: CasosTotalizadores.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 189
	%struct.DSOCacheEntry {
		i64 1598570791, ; hash 0x5f484127, from name: libaot-UXDivers.Artina.Shared
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 190
	%struct.DSOCacheEntry {
		i64 1615395003, ; hash 0x6048f8bb, from name: UXDivers.Artina.Shared.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 191
	%struct.DSOCacheEntry {
		i64 1624589378, ; hash 0x60d54442, from name: Xamarin.Android.Support.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 192
	%struct.DSOCacheEntry {
		i64 1635191789, ; hash 0x61770bed, from name: libaot-Plugin.Permissions
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 193
	%struct.DSOCacheEntry {
		i64 1644866984, ; hash 0x620aada8, from name: libaot-Plugin.CurrentActivity
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 194
	%struct.DSOCacheEntry {
		i64 1662014763, ; hash 0x6310552b, from name: Xamarin.Android.Support.Vector.Drawable
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 195
	%struct.DSOCacheEntry {
		i64 1668257825, ; hash 0x636f9821, from name: aot-UXDivers.Artina.Shared.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 196
	%struct.DSOCacheEntry {
		i64 1680685970, ; hash 0x642d3b92, from name: libaot-Plugin.Settings
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 197
	%struct.DSOCacheEntry {
		i64 1685661885, ; hash 0x647928bd, from name: Xamarin.Android.Support.Media.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 198
	%struct.DSOCacheEntry {
		i64 1695945534, ; hash 0x6516133e, from name: Xamarin.GooglePlayServices.Location.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 199
	%struct.DSOCacheEntry {
		i64 1704500184, ; hash 0x65989bd8, from name: libaot-Xamarin.Forms.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 200
	%struct.DSOCacheEntry {
		i64 1716994807, ; hash 0x665742f7, from name: libaot-FFImageLoading.Forms.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 201
	%struct.DSOCacheEntry {
		i64 1737147047, ; hash 0x678ac2a7, from name: aot-Xamarin.Android.Support.v7.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 202
	%struct.DSOCacheEntry {
		i64 1738557069, ; hash 0x67a0468d, from name: libaot-Plugin.Media
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 203
	%struct.DSOCacheEntry {
		i64 1739151443, ; hash 0x67a95853, from name: aot-UXDivers.Effects
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 204
	%struct.DSOCacheEntry {
		i64 1740020094, ; hash 0x67b6997e, from name: System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 205
	%struct.DSOCacheEntry {
		i64 1745094337, ; hash 0x680406c1, from name: libaot-DevExpress.Mobile.Core.Android.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 206
	%struct.DSOCacheEntry {
		i64 1768718316, ; hash 0x696c7fec, from name: libaot-DevExpress.Mobile.Core.Android.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 207
	%struct.DSOCacheEntry {
		i64 1773040089, ; hash 0x69ae71d9, from name: aot-Xamarin.Forms.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 208
	%struct.DSOCacheEntry {
		i64 1793612439, ; hash 0x6ae85a97, from name: DevExpress.Mobile.Core.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 209
	%struct.DSOCacheEntry {
		i64 1804482993, ; hash 0x6b8e39b1, from name: libaot-Xamarin.Android.Support.Animated.Vector.Drawable
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 210
	%struct.DSOCacheEntry {
		i64 1809675480, ; hash 0x6bdd74d8, from name: libaot-Xamarin.GooglePlayServices.Maps
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 211
	%struct.DSOCacheEntry {
		i64 1810752137, ; hash 0x6bede289, from name: mono-profiler-log.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 212
	%struct.DSOCacheEntry {
		i64 1818598803, ; hash 0x6c659d93, from name: libaot-Mono.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 213
	%struct.DSOCacheEntry {
		i64 1821254312, ; hash 0x6c8e22a8, from name: aot-Plugin.Permissions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 214
	%struct.DSOCacheEntry {
		i64 1822307990, ; hash 0x6c9e3696, from name: aot-Plugin.Connectivity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 215
	%struct.DSOCacheEntry {
		i64 1840445796, ; hash 0x6db2f964, from name: libaot-System.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 216
	%struct.DSOCacheEntry {
		i64 1840964413, ; hash 0x6dbae33d, from name: FFImageLoading.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 217
	%struct.DSOCacheEntry {
		i64 1843072051, ; hash 0x6ddb0c33, from name: libaot-WebSocket4Net
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 218
	%struct.DSOCacheEntry {
		i64 1854815758, ; hash 0x6e8e3e0e, from name: aot-Xamarin.Android.Support.v7.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 219
	%struct.DSOCacheEntry {
		i64 1869023076, ; hash 0x6f670764, from name: UXDivers.Artina.Shared.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 220
	%struct.DSOCacheEntry {
		i64 1875524570, ; hash 0x6fca3bda, from name: Xamarin.Forms.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 221
	%struct.DSOCacheEntry {
		i64 1895423854, ; hash 0x70f9df6e, from name: aot-System.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 222
	%struct.DSOCacheEntry {
		i64 1900739026, ; hash 0x714af9d2, from name: libaot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 223
	%struct.DSOCacheEntry {
		i64 1903446268, ; hash 0x717448fc, from name: aot-Plugin.Permissions.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 224
	%struct.DSOCacheEntry {
		i64 1906347566, ; hash 0x71a08e2e, from name: aot-FFImageLoading.Forms.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 225
	%struct.DSOCacheEntry {
		i64 1906566901, ; hash 0x71a3e6f5, from name: Xamarin.Android.Support.Animated.Vector.Drawable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 226
	%struct.DSOCacheEntry {
		i64 1908813208, ; hash 0x71c62d98, from name: Xamarin.GooglePlayServices.Basement
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 227
	%struct.DSOCacheEntry {
		i64 1910515074, ; hash 0x71e02582, from name: Lottie.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 228
	%struct.DSOCacheEntry {
		i64 1915994670, ; hash 0x7233c22e, from name: libaot-FFImageLoading.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 229
	%struct.DSOCacheEntry {
		i64 1934079578, ; hash 0x7347b65a, from name: aot-Plugin.Settings.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 230
	%struct.DSOCacheEntry {
		i64 1958255324, ; hash 0x74b89adc, from name: Lottie.Forms.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 231
	%struct.DSOCacheEntry {
		i64 1972085154, ; hash 0x758ba1a2, from name: libaot-FFImageLoading.Transformations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 232
	%struct.DSOCacheEntry {
		i64 1975492760, ; hash 0x75bfa098, from name: libaot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 233
	%struct.DSOCacheEntry {
		i64 1976273720, ; hash 0x75cb8b38, from name: aot-WebSocket4Net.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 234
	%struct.DSOCacheEntry {
		i64 1978833500, ; hash 0x75f29a5c, from name: EngineIoClientDotNet
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 235
	%struct.DSOCacheEntry {
		i64 1992955695, ; hash 0x76ca172f, from name: aot-DevExpress.Mobile.Core.Android.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 236
	%struct.DSOCacheEntry {
		i64 2011666143, ; hash 0x77e796df, from name: aot-Xamarin.Forms.Maps.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 237
	%struct.DSOCacheEntry {
		i64 2013001922, ; hash 0x77fbf8c2, from name: aot-System.Net.Http.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 238
	%struct.DSOCacheEntry {
		i64 2022220237, ; hash 0x7888a1cd, from name: Plugin.Permissions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 239
	%struct.DSOCacheEntry {
		i64 2025743901, ; hash 0x78be661d, from name: Plugin.Connectivity.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 240
	%struct.DSOCacheEntry {
		i64 2026008125, ; hash 0x78c26e3d, from name: Xamarin.Android.Support.v7.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 241
	%struct.DSOCacheEntry {
		i64 2029908657, ; hash 0x78fdf2b1, from name: libaot-System.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 242
	%struct.DSOCacheEntry {
		i64 2036269615, ; hash 0x795f022f, from name: Plugin.Settings.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 243
	%struct.DSOCacheEntry {
		i64 2042538828, ; hash 0x79beab4c, from name: aot-Xamarin.Android.Support.Animated.Vector.Drawable
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 244
	%struct.DSOCacheEntry {
		i64 2048478443, ; hash 0x7a194ceb, from name: libaot-Xamarin.Android.Support.Vector.Drawable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 245
	%struct.DSOCacheEntry {
		i64 2050086544, ; hash 0x7a31d690, from name: aot-Xamarin.Forms.Maps.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 246
	%struct.DSOCacheEntry {
		i64 2057476288, ; hash 0x7aa298c0, from name: aot-Xamarin.GooglePlayServices.Maps
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 247
	%struct.DSOCacheEntry {
		i64 2059038171, ; hash 0x7aba6ddb, from name: aot-FormsViewGroup.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 248
	%struct.DSOCacheEntry {
		i64 2066385046, ; hash 0x7b2a8896, from name: aot-Xamarin.Android.Support.v7.MediaRouter
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 249
	%struct.DSOCacheEntry {
		i64 2072997827, ; hash 0x7b8f6fc3, from name: mono-native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 250
	%struct.DSOCacheEntry {
		i64 2077895366, ; hash 0x7bda2ac6, from name: libaot-CasosTotalizadores.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 251
	%struct.DSOCacheEntry {
		i64 2082659839, ; hash 0x7c22ddff, from name: Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 252
	%struct.DSOCacheEntry {
		i64 2107996368, ; hash 0x7da578d0, from name: libaot-Xamarin.Forms.Maps.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 253
	%struct.DSOCacheEntry {
		i64 2119570579, ; hash 0x7e561493, from name: libaot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 254
	%struct.DSOCacheEntry {
		i64 2126786730, ; hash 0x7ec430aa, from name: Xamarin.Forms.Platform.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 255
	%struct.DSOCacheEntry {
		i64 2133959981, ; hash 0x7f31a52d, from name: aot-Xamarin.Forms.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 256
	%struct.DSOCacheEntry {
		i64 2155306486, ; hash 0x80775df6, from name: aot-Xamarin.GooglePlayServices.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 257
	%struct.DSOCacheEntry {
		i64 2166116741, ; hash 0x811c5185, from name: Xamarin.Android.Support.Core.Utils
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 258
	%struct.DSOCacheEntry {
		i64 2170036184, ; hash 0x81581fd8, from name: aot-Plugin.Settings.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 259
	%struct.DSOCacheEntry {
		i64 2191365786, ; hash 0x829d969a, from name: aot-CasosTotalizadores.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 260
	%struct.DSOCacheEntry {
		i64 2201231467, ; hash 0x8334206b, from name: System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 261
	%struct.DSOCacheEntry {
		i64 2207812213, ; hash 0x83988a75, from name: aot-Xamarin.Android.Arch.Core.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 262
	%struct.DSOCacheEntry {
		i64 2207954055, ; hash 0x839ab487, from name: UXDivers.Artina.Shared.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 263
	%struct.DSOCacheEntry {
		i64 2212031953, ; hash 0x83d8edd1, from name: libaot-System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 264
	%struct.DSOCacheEntry {
		i64 2214110893, ; hash 0x83f8a6ad, from name: Xamarin.Forms.Maps.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 265
	%struct.DSOCacheEntry {
		i64 2225927200, ; hash 0x84acf420, from name: libaot-Xamarin.Forms.Platform.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 266
	%struct.DSOCacheEntry {
		i64 2229681966, ; hash 0x84e63f2e, from name: xamarin-debug-app-helper
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 267
	%struct.DSOCacheEntry {
		i64 2239746410, ; hash 0x857fd16a, from name: libaot-Xamarin.Android.Support.v7.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 268
	%struct.DSOCacheEntry {
		i64 2250503296, ; hash 0x8623f480, from name: libaot-Plugin.Connectivity
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 269
	%struct.DSOCacheEntry {
		i64 2251146473, ; hash 0x862dc4e9, from name: aot-Lottie.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 270
	%struct.DSOCacheEntry {
		i64 2254027380, ; hash 0x8659ba74, from name: libaot-System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 271
	%struct.DSOCacheEntry {
		i64 2273815310, ; hash 0x8787ab0e, from name: Xamarin.Android.Arch.Core.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 272
	%struct.DSOCacheEntry {
		i64 2287449915, ; hash 0x8857b73b, from name: aot-Xamarin.GooglePlayServices.Location
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 273
	%struct.DSOCacheEntry {
		i64 2300115772, ; hash 0x8918fb3c, from name: aot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 274
	%struct.DSOCacheEntry {
		i64 2316422618, ; hash 0x8a11cdda, from name: UXDivers.Artina.Shared.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 275
	%struct.DSOCacheEntry {
		i64 2320410470, ; hash 0x8a4ea766, from name: UXDivers.Effects.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 276
	%struct.DSOCacheEntry {
		i64 2325832376, ; hash 0x8aa162b8, from name: Xamarin.Android.Support.Annotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 277
	%struct.DSOCacheEntry {
		i64 2331676825, ; hash 0x8afa9099, from name: aot-Xamarin.Forms.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 278
	%struct.DSOCacheEntry {
		i64 2352781004, ; hash 0x8c3c96cc, from name: libaot-UXDivers.Effects.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 279
	%struct.DSOCacheEntry {
		i64 2373863404, ; hash 0x8d7e47ec, from name: aot-Toasts.Forms.Plugin.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 280
	%struct.DSOCacheEntry {
		i64 2385253066, ; hash 0x8e2c12ca, from name: DevExpress.Mobile.Grid.Android.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 281
	%struct.DSOCacheEntry {
		i64 2393309608, ; hash 0x8ea701a8, from name: EngineIoClientDotNet.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 282
	%struct.DSOCacheEntry {
		i64 2394974842, ; hash 0x8ec06a7a, from name: libaot-EngineIoClientDotNet
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 283
	%struct.DSOCacheEntry {
		i64 2430764428, ; hash 0x90e2858c, from name: libaot-Xamarin.Forms.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 284
	%struct.DSOCacheEntry {
		i64 2431890512, ; hash 0x90f3b450, from name: libaot-System.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 285
	%struct.DSOCacheEntry {
		i64 2445417121, ; hash 0x91c21aa1, from name: aot-Plugin.Settings.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 286
	%struct.DSOCacheEntry {
		i64 2450234727, ; hash 0x920b9d67, from name: libaot-Toasts.Forms.Plugin.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 287
	%struct.DSOCacheEntry {
		i64 2474087874, ; hash 0x937795c2, from name: aot-Xamarin.GooglePlayServices.Basement.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 288
	%struct.DSOCacheEntry {
		i64 2477279789, ; hash 0x93a84a2d, from name: Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 289
	%struct.DSOCacheEntry {
		i64 2487696108, ; hash 0x94473aec, from name: libaot-Xamarin.Android.Support.v7.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 290
	%struct.DSOCacheEntry {
		i64 2489450908, ; hash 0x9462019c, from name: libaot-System.Net.Http.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 291
	%struct.DSOCacheEntry {
		i64 2494152038, ; hash 0x94a9bd66, from name: libaot-Plugin.Permissions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 292
	%struct.DSOCacheEntry {
		i64 2494228834, ; hash 0x94aae962, from name: aot-Xamarin.Android.Support.Core.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 293
	%struct.DSOCacheEntry {
		i64 2495944416, ; hash 0x94c516e0, from name: aot-Xamarin.Android.Support.v4.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 294
	%struct.DSOCacheEntry {
		i64 2496112763, ; hash 0x94c7a87b, from name: libmonosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 295
	%struct.DSOCacheEntry {
		i64 2496313987, ; hash 0x94caba83, from name: FormsViewGroup.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 296
	%struct.DSOCacheEntry {
		i64 2506246445, ; hash 0x9562492d, from name: aot-Xamarin.Android.Support.v7.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 297
	%struct.DSOCacheEntry {
		i64 2528485367, ; hash 0x96b59ff7, from name: aot-Xamarin.Android.Support.v7.Palette.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 298
	%struct.DSOCacheEntry {
		i64 2531241668, ; hash 0x96dfaec4, from name: libmono-native
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 299
	%struct.DSOCacheEntry {
		i64 2534951846, ; hash 0x97184ba6, from name: aot-System.ServiceModel.Internals
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 300
	%struct.DSOCacheEntry {
		i64 2562349572, ; hash 0x98ba5a04, from name: Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 301
	%struct.DSOCacheEntry {
		i64 2562645212, ; hash 0x98bedcdc, from name: aot-Xamarin.Android.Support.Core.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 302
	%struct.DSOCacheEntry {
		i64 2564416652, ; hash 0x98d9e48c, from name: DevExpress.Mobile.Grid.Android.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 303
	%struct.DSOCacheEntry {
		i64 2572893772, ; hash 0x995b3e4c, from name: libaot-Xamarin.Android.Support.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 304
	%struct.DSOCacheEntry {
		i64 2578403962, ; hash 0x99af527a, from name: DevExpress.Mobile.Grid.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 305
	%struct.DSOCacheEntry {
		i64 2579981853, ; hash 0x99c7661d, from name: libaot-UXDivers.Artina.Shared.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 306
	%struct.DSOCacheEntry {
		i64 2583060206, ; hash 0x99f65eee, from name: aot-Toasts.Forms.Plugin.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 307
	%struct.DSOCacheEntry {
		i64 2585684819, ; hash 0x9a1e6b53, from name: libaot-Toasts.Forms.Plugin.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 308
	%struct.DSOCacheEntry {
		i64 2588318116, ; hash 0x9a4699a4, from name: libaot-Xamarin.GooglePlayServices.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 309
	%struct.DSOCacheEntry {
		i64 2620661984, ; hash 0x9c3420e0, from name: libaot-Lottie.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 310
	%struct.DSOCacheEntry {
		i64 2630569100, ; hash 0x9ccb4c8c, from name: aot-UXDivers.Artina.Shared.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 311
	%struct.DSOCacheEntry {
		i64 2639209874, ; hash 0x9d4f2592, from name: System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 312
	%struct.DSOCacheEntry {
		i64 2654345952, ; hash 0x9e361ae0, from name: libaot-Xamarin.GooglePlayServices.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 313
	%struct.DSOCacheEntry {
		i64 2657356145, ; hash 0x9e640971, from name: libaot-Xamarin.Android.Support.v7.Palette.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 314
	%struct.DSOCacheEntry {
		i64 2658598962, ; hash 0x9e770032, from name: monosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 315
	%struct.DSOCacheEntry {
		i64 2663219906, ; hash 0x9ebd82c2, from name: Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 316
	%struct.DSOCacheEntry {
		i64 2671942323, ; hash 0x9f429ab3, from name: Xamarin.GooglePlayServices.Basement.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 317
	%struct.DSOCacheEntry {
		i64 2684551006, ; hash 0xa002ff5e, from name: aot-UXDivers.Artina.Shared.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 318
	%struct.DSOCacheEntry {
		i64 2685533963, ; hash 0xa011ff0b, from name: FFImageLoading.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 319
	%struct.DSOCacheEntry {
		i64 2685668126, ; hash 0xa0140b1e, from name: aot-Xamarin.Android.Support.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 320
	%struct.DSOCacheEntry {
		i64 2705065486, ; hash 0xa13c060e, from name: aot-DevExpress.Mobile.Core.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 321
	%struct.DSOCacheEntry {
		i64 2709717763, ; hash 0xa1830303, from name: aot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 322
	%struct.DSOCacheEntry {
		i64 2734774629, ; hash 0xa3015965, from name: Xamarin.Android.Support.Design.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 323
	%struct.DSOCacheEntry {
		i64 2746397398, ; hash 0xa3b2b2d6, from name: libaot-Newtonsoft.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 324
	%struct.DSOCacheEntry {
		i64 2746471628, ; hash 0xa3b3d4cc, from name: libaot-Xamarin.Android.Support.Design.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 325
	%struct.DSOCacheEntry {
		i64 2754271178, ; hash 0xa42ad7ca, from name: Xamarin.Android.Support.v7.Palette
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 326
	%struct.DSOCacheEntry {
		i64 2766581644, ; hash 0xa4e6af8c, from name: Xamarin.Forms.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 327
	%struct.DSOCacheEntry {
		i64 2771824870, ; hash 0xa536b0e6, from name: libaot-FFImageLoading.Forms.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 328
	%struct.DSOCacheEntry {
		i64 2780521996, ; hash 0xa5bb660c, from name: aot-DevExpress.Mobile.Grid.Android.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 329
	%struct.DSOCacheEntry {
		i64 2791130046, ; hash 0xa65d43be, from name: aot-System.Net.Http.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 330
	%struct.DSOCacheEntry {
		i64 2797462161, ; hash 0xa6bde291, from name: FFImageLoading.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 331
	%struct.DSOCacheEntry {
		i64 2802396408, ; hash 0xa7092cf8, from name: libaot-UXDivers.Effects.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 332
	%struct.DSOCacheEntry {
		i64 2807474370, ; hash 0xa756a8c2, from name: libaot-Xamarin.Android.Support.v7.MediaRouter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 333
	%struct.DSOCacheEntry {
		i64 2816232944, ; hash 0xa7dc4df0, from name: aot-CasosTotalizadores.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 334
	%struct.DSOCacheEntry {
		i64 2835086722, ; hash 0xa8fbfd82, from name: Toasts.Forms.Plugin.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 335
	%struct.DSOCacheEntry {
		i64 2843644522, ; hash 0xa97e926a, from name: libxa-internal-api.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 336
	%struct.DSOCacheEntry {
		i64 2847418871, ; hash 0xa9b829f7, from name: Xamarin.GooglePlayServices.Base
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 337
	%struct.DSOCacheEntry {
		i64 2853150637, ; hash 0xaa0f9fad, from name: SocketIoClientDotNet.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 338
	%struct.DSOCacheEntry {
		i64 2873222696, ; hash 0xab41e628, from name: FFImageLoading
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 339
	%struct.DSOCacheEntry {
		i64 2880935700, ; hash 0xabb79714, from name: aot-Plugin.Permissions.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 340
	%struct.DSOCacheEntry {
		i64 2882434345, ; hash 0xabce7529, from name: libmono-profiler-log
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 341
	%struct.DSOCacheEntry {
		i64 2889652823, ; hash 0xac3c9a57, from name: Plugin.Permissions.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 342
	%struct.DSOCacheEntry {
		i64 2892040511, ; hash 0xac61093f, from name: libaot-Lottie.Forms.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 343
	%struct.DSOCacheEntry {
		i64 2896747485, ; hash 0xaca8dbdd, from name: WebSocket4Net.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 344
	%struct.DSOCacheEntry {
		i64 2917284045, ; hash 0xade238cd, from name: CasosTotalizadores
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 345
	%struct.DSOCacheEntry {
		i64 2955414144, ; hash 0xb0280a80, from name: aot-System.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 346
	%struct.DSOCacheEntry {
		i64 2960725135, ; hash 0xb079148f, from name: aot-FFImageLoading.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 347
	%struct.DSOCacheEntry {
		i64 2968160088, ; hash 0xb0ea8758, from name: libaot-DevExpress.Mobile.Grid.Android.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 348
	%struct.DSOCacheEntry {
		i64 2975919278, ; hash 0xb160ecae, from name: libaot-Xamarin.Android.Arch.Lifecycle.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 349
	%struct.DSOCacheEntry {
		i64 2982378693, ; hash 0xb1c37cc5, from name: aot-Xamarin.Android.Support.v4
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 350
	%struct.DSOCacheEntry {
		i64 2984169794, ; hash 0xb1ded142, from name: Xamarin.GooglePlayServices.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 351
	%struct.DSOCacheEntry {
		i64 3002033339, ; hash 0xb2ef64bb, from name: aot-Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 352
	%struct.DSOCacheEntry {
		i64 3010818927, ; hash 0xb375736f, from name: System.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 353
	%struct.DSOCacheEntry {
		i64 3017076677, ; hash 0xb3d4efc5, from name: Xamarin.GooglePlayServices.Maps
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 354
	%struct.DSOCacheEntry {
		i64 3025636810, ; hash 0xb4578dca, from name: UXDivers.Effects.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 355
	%struct.DSOCacheEntry {
		i64 3033282009, ; hash 0xb4cc35d9, from name: aot-Plugin.Connectivity.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 356
	%struct.DSOCacheEntry {
		i64 3037630996, ; hash 0xb50e9214, from name: libaot-Plugin.Permissions.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 357
	%struct.DSOCacheEntry {
		i64 3044182254, ; hash 0xb57288ee, from name: FormsViewGroup
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 358
	%struct.DSOCacheEntry {
		i64 3056338168, ; hash 0xb62c04f8, from name: libaot-Plugin.Settings.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 359
	%struct.DSOCacheEntry {
		i64 3056707377, ; hash 0xb631a731, from name: libmono-native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 360
	%struct.DSOCacheEntry {
		i64 3057414224, ; hash 0xb63c7050, from name: aot-Xamarin.Forms.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 361
	%struct.DSOCacheEntry {
		i64 3058099980, ; hash 0xb646e70c, from name: Xamarin.GooglePlayServices.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 362
	%struct.DSOCacheEntry {
		i64 3063002078, ; hash 0xb691b3de, from name: libaot-Xamarin.Android.Support.Vector.Drawable
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 363
	%struct.DSOCacheEntry {
		i64 3068715062, ; hash 0xb6e8e036, from name: Xamarin.Android.Arch.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 364
	%struct.DSOCacheEntry {
		i64 3071047597, ; hash 0xb70c77ad, from name: libaot-Xamarin.Android.Support.Design
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 365
	%struct.DSOCacheEntry {
		i64 3076901766, ; hash 0xb765cb86, from name: aot-DevExpress.Mobile.Core.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 366
	%struct.DSOCacheEntry {
		i64 3083420710, ; hash 0xb7c94426, from name: libaot-UXDivers.Artina.Shared.Base.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 367
	%struct.DSOCacheEntry {
		i64 3085146302, ; hash 0xb7e398be, from name: libaot-Xamarin.GooglePlayServices.Location.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 368
	%struct.DSOCacheEntry {
		i64 3092844642, ; hash 0xb8591062, from name: libaot-Lottie.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 369
	%struct.DSOCacheEntry {
		i64 3111772706, ; hash 0xb979e222, from name: System.Runtime.Serialization
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 370
	%struct.DSOCacheEntry {
		i64 3119652235, ; hash 0xb9f21d8b, from name: Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 371
	%struct.DSOCacheEntry {
		i64 3125120366, ; hash 0xba458d6e, from name: aot-FFImageLoading
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 372
	%struct.DSOCacheEntry {
		i64 3127805634, ; hash 0xba6e86c2, from name: aot-EngineIoClientDotNet.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 373
	%struct.DSOCacheEntry {
		i64 3129207038, ; hash 0xba83e8fe, from name: aot-FFImageLoading.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 374
	%struct.DSOCacheEntry {
		i64 3130425618, ; hash 0xba968112, from name: Xamarin.GooglePlayServices.Maps.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 375
	%struct.DSOCacheEntry {
		i64 3132555244, ; hash 0xbab6ffec, from name: libaot-FFImageLoading.Transformations
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 376
	%struct.DSOCacheEntry {
		i64 3135882136, ; hash 0xbae9c398, from name: libaot-SocketIoClientDotNet.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 377
	%struct.DSOCacheEntry {
		i64 3169141071, ; hash 0xbce5414f, from name: aot-SocketIoClientDotNet.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 378
	%struct.DSOCacheEntry {
		i64 3175888932, ; hash 0xbd4c3824, from name: libaot-Plugin.Connectivity.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 379
	%struct.DSOCacheEntry {
		i64 3184779483, ; hash 0xbdd3e0db, from name: libaot-Xamarin.Android.Arch.Lifecycle.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 380
	%struct.DSOCacheEntry {
		i64 3187256216, ; hash 0xbdf9ab98, from name: Plugin.Settings.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 381
	%struct.DSOCacheEntry {
		i64 3189665707, ; hash 0xbe1e6fab, from name: Xamarin.Android.Support.v7.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 382
	%struct.DSOCacheEntry {
		i64 3194035187, ; hash 0xbe611bf3, from name: Xamarin.Android.Support.v7.MediaRouter
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 383
	%struct.DSOCacheEntry {
		i64 3206147678, ; hash 0xbf19ee5e, from name: libaot-Xamarin.Android.Arch.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 384
	%struct.DSOCacheEntry {
		i64 3212420811, ; hash 0xbf79a6cb, from name: System.Net.Http.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 385
	%struct.DSOCacheEntry {
		i64 3212624420, ; hash 0xbf7cc224, from name: libaot-Xamarin.Android.Support.Media.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 386
	%struct.DSOCacheEntry {
		i64 3219610132, ; hash 0xbfe75a14, from name: aot-Xamarin.Android.Support.Media.Compat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 387
	%struct.DSOCacheEntry {
		i64 3230163380, ; hash 0xc08861b4, from name: aot-Xamarin.GooglePlayServices.Basement
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 388
	%struct.DSOCacheEntry {
		i64 3233896403, ; hash 0xc0c157d3, from name: libaot-Toasts.Forms.Plugin.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 389
	%struct.DSOCacheEntry {
		i64 3243272429, ; hash 0xc15068ed, from name: aot-System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 390
	%struct.DSOCacheEntry {
		i64 3247949154, ; hash 0xc197c562, from name: Mono.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 391
	%struct.DSOCacheEntry {
		i64 3249555783, ; hash 0xc1b04947, from name: libaot-Plugin.Settings.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 392
	%struct.DSOCacheEntry {
		i64 3253222330, ; hash 0xc1e83bba, from name: libaot-Xamarin.Android.Support.v7.Palette
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 393
	%struct.DSOCacheEntry {
		i64 3263537053, ; hash 0xc2859f9d, from name: aot-FFImageLoading.Transformations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 394
	%struct.DSOCacheEntry {
		i64 3263631797, ; hash 0xc28711b5, from name: Lottie.Forms
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 395
	%struct.DSOCacheEntry {
		i64 3271233757, ; hash 0xc2fb10dd, from name: libaot-Xamarin.Android.Support.v4
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 396
	%struct.DSOCacheEntry {
		i64 3271438092, ; hash 0xc2fe2f0c, from name: libaot-mscorlib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 397
	%struct.DSOCacheEntry {
		i64 3275660490, ; hash 0xc33e9cca, from name: System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 398
	%struct.DSOCacheEntry {
		i64 3283203540, ; hash 0xc3b1b5d4, from name: aot-Plugin.Settings
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 399
	%struct.DSOCacheEntry {
		i64 3286136163, ; hash 0xc3de7563, from name: UXDivers.Effects
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 400
	%struct.DSOCacheEntry {
		i64 3288103859, ; hash 0xc3fc7bb3, from name: aot-UXDivers.Effects.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 401
	%struct.DSOCacheEntry {
		i64 3289202573, ; hash 0xc40d3f8d, from name: Xamarin.Android.Support.v7.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 402
	%struct.DSOCacheEntry {
		i64 3310036410, ; hash 0xc54b25ba, from name: System.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 403
	%struct.DSOCacheEntry {
		i64 3317144872, ; hash 0xc5b79d28, from name: System.Data
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 404
	%struct.DSOCacheEntry {
		i64 3320183860, ; hash 0xc5e5fc34, from name: aot-WebSocket4Net
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 405
	%struct.DSOCacheEntry {
		i64 3322182132, ; hash 0xc60479f4, from name: libmono-btls-shared
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 406
	%struct.DSOCacheEntry {
		i64 3323143848, ; hash 0xc61326a8, from name: aot-Newtonsoft.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 407
	%struct.DSOCacheEntry {
		i64 3324893654, ; hash 0xc62dd9d6, from name: aot-FFImageLoading.Transformations
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 408
	%struct.DSOCacheEntry {
		i64 3339656858, ; hash 0xc70f1e9a, from name: aot-UXDivers.Artina.Shared.Base.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 409
	%struct.DSOCacheEntry {
		i64 3344361788, ; hash 0xc756e93c, from name: aot-DevExpress.Mobile.Core.Android.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 410
	%struct.DSOCacheEntry {
		i64 3357027669, ; hash 0xc8182d55, from name: aot-Xamarin.GooglePlayServices.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 411
	%struct.DSOCacheEntry {
		i64 3357441165, ; hash 0xc81e7c8d, from name: libaot-Xamarin.Android.Support.v7.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 412
	%struct.DSOCacheEntry {
		i64 3366347497, ; hash 0xc8a662e9, from name: Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 413
	%struct.DSOCacheEntry {
		i64 3371771583, ; hash 0xc8f926bf, from name: Xamarin.Android.Support.v7.Palette.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 414
	%struct.DSOCacheEntry {
		i64 3372075591, ; hash 0xc8fdca47, from name: System.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 415
	%struct.DSOCacheEntry {
		i64 3388244584, ; hash 0xc9f48268, from name: Lottie.Forms.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 416
	%struct.DSOCacheEntry {
		i64 3400462534, ; hash 0xcaaef0c6, from name: mscorlib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 417
	%struct.DSOCacheEntry {
		i64 3404865022, ; hash 0xcaf21dfe, from name: System.ServiceModel.Internals
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 418
	%struct.DSOCacheEntry {
		i64 3418698506, ; hash 0xcbc5330a, from name: Xamarin.Android.Support.Core.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 419
	%struct.DSOCacheEntry {
		i64 3422266863, ; hash 0xcbfba5ef, from name: libmonodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 420
	%struct.DSOCacheEntry {
		i64 3424137995, ; hash 0xcc18330b, from name: Xamarin.Forms.Platform.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 421
	%struct.DSOCacheEntry {
		i64 3429136800, ; hash 0xcc6479a0, from name: System.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 422
	%struct.DSOCacheEntry {
		i64 3430713643, ; hash 0xcc7c892b, from name: aot-FFImageLoading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 423
	%struct.DSOCacheEntry {
		i64 3431066910, ; hash 0xcc81ed1e, from name: aot-Xamarin.Forms.Maps.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 424
	%struct.DSOCacheEntry {
		i64 3436376940, ; hash 0xccd2f36c, from name: Plugin.Media.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 425
	%struct.DSOCacheEntry {
		i64 3437725714, ; hash 0xcce78812, from name: aot-SocketIoClientDotNet
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 426
	%struct.DSOCacheEntry {
		i64 3472379724, ; hash 0xcef84f4c, from name: libaot-Xamarin.Android.Arch.Core.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 427
	%struct.DSOCacheEntry {
		i64 3476120550, ; hash 0xcf3163e6, from name: Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 428
	%struct.DSOCacheEntry {
		i64 3487678246, ; hash 0xcfe1bf26, from name: aot-CasosTotalizadores.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 429
	%struct.DSOCacheEntry {
		i64 3488778419, ; hash 0xcff288b3, from name: FFImageLoading.Forms.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 430
	%struct.DSOCacheEntry {
		i64 3497053051, ; hash 0xd070cb7b, from name: aot-DevExpress.Mobile.Grid.Android.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 431
	%struct.DSOCacheEntry {
		i64 3509114376, ; hash 0xd128d608, from name: System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 432
	%struct.DSOCacheEntry {
		i64 3522916314, ; hash 0xd1fb6fda, from name: System.Net.Http.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 433
	%struct.DSOCacheEntry {
		i64 3535406982, ; hash 0xd2ba0786, from name: libaot-Toasts.Forms.Plugin.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 434
	%struct.DSOCacheEntry {
		i64 3537663003, ; hash 0xd2dc741b, from name: aot-FormsViewGroup
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 435
	%struct.DSOCacheEntry {
		i64 3553235492, ; hash 0xd3ca1224, from name: libaot-System.Net.Http.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 436
	%struct.DSOCacheEntry {
		i64 3556045384, ; hash 0xd3f4f248, from name: libaot-UXDivers.Artina.Shared.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 437
	%struct.DSOCacheEntry {
		i64 3557887367, ; hash 0xd4110d87, from name: libaot-System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 438
	%struct.DSOCacheEntry {
		i64 3565226175, ; hash 0xd48108bf, from name: libaot-System.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 439
	%struct.DSOCacheEntry {
		i64 3567139968, ; hash 0xd49e3c80, from name: aot-Xamarin.Android.Support.Animated.Vector.Drawable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 440
	%struct.DSOCacheEntry {
		i64 3572049353, ; hash 0xd4e925c9, from name: libxa-internal-api
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 441
	%struct.DSOCacheEntry {
		i64 3596304734, ; hash 0xd65b415e, from name: aot-Xamarin.Android.Support.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 442
	%struct.DSOCacheEntry {
		i64 3596578457, ; hash 0xd65f6e99, from name: libaot-Xamarin.Forms.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 443
	%struct.DSOCacheEntry {
		i64 3601814654, ; hash 0xd6af547e, from name: libaot-Xamarin.Android.Support.v7.MediaRouter
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 444
	%struct.DSOCacheEntry {
		i64 3603132491, ; hash 0xd6c3704b, from name: aot-Plugin.Connectivity.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 445
	%struct.DSOCacheEntry {
		i64 3611850339, ; hash 0xd7487663, from name: mono-profiler-log
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 446
	%struct.DSOCacheEntry {
		i64 3629173998, ; hash 0xd850ccee, from name: libaot-mscorlib
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 447
	%struct.DSOCacheEntry {
		i64 3632359727, ; hash 0xd881692f, from name: Xamarin.Forms.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 448
	%struct.DSOCacheEntry {
		i64 3636393175, ; hash 0xd8bef4d7, from name: libmonodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 449
	%struct.DSOCacheEntry {
		i64 3640780253, ; hash 0xd901e5dd, from name: System.Net.Http.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 450
	%struct.DSOCacheEntry {
		i64 3678221644, ; hash 0xdb3d354c, from name: Xamarin.Android.Support.v7.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 451
	%struct.DSOCacheEntry {
		i64 3688928176, ; hash 0xdbe093b0, from name: libaot-FFImageLoading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 452
	%struct.DSOCacheEntry {
		i64 3708930120, ; hash 0xdd11c848, from name: libaot-System.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 453
	%struct.DSOCacheEntry {
		i64 3709087552, ; hash 0xdd142f40, from name: libmono-btls-shared.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 454
	%struct.DSOCacheEntry {
		i64 3712864299, ; hash 0xdd4dd02b, from name: aot-Lottie.Forms.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 455
	%struct.DSOCacheEntry {
		i64 3714438332, ; hash 0xdd65d4bc, from name: aot-UXDivers.Artina.Shared.Droid
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 456
	%struct.DSOCacheEntry {
		i64 3723212984, ; hash 0xddebb8b8, from name: UXDivers.Artina.Shared
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 457
	%struct.DSOCacheEntry {
		i64 3746446938, ; hash 0xdf4e3e5a, from name: Plugin.CurrentActivity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 458
	%struct.DSOCacheEntry {
		i64 3756106404, ; hash 0xdfe1a2a4, from name: aot-Xamarin.Android.Support.Annotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 459
	%struct.DSOCacheEntry {
		i64 3756868177, ; hash 0xdfed4251, from name: Toasts.Forms.Plugin.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 460
	%struct.DSOCacheEntry {
		i64 3760044710, ; hash 0xe01dbaa6, from name: aot-Xamarin.GooglePlayServices.Location.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 461
	%struct.DSOCacheEntry {
		i64 3771556484, ; hash 0xe0cd6284, from name: libaot-Plugin.Media.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 462
	%struct.DSOCacheEntry {
		i64 3790421216, ; hash 0xe1ed3ce0, from name: monosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 463
	%struct.DSOCacheEntry {
		i64 3797100270, ; hash 0xe25326ee, from name: mono-btls-shared.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 464
	%struct.DSOCacheEntry {
		i64 3803983502, ; hash 0xe2bc2e8e, from name: Xamarin.Android.Support.Core.Utils.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 465
	%struct.DSOCacheEntry {
		i64 3817984437, ; hash 0xe391d1b5, from name: libmonosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 466
	%struct.DSOCacheEntry {
		i64 3829389271, ; hash 0xe43fd7d7, from name: Xamarin.Android.Support.v4.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 467
	%struct.DSOCacheEntry {
		i64 3830550798, ; hash 0xe451910e, from name: aot-Lottie.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 468
	%struct.DSOCacheEntry {
		i64 3846225701, ; hash 0xe540bf25, from name: System.ServiceModel.Internals.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 469
	%struct.DSOCacheEntry {
		i64 3867591574, ; hash 0xe686c396, from name: aot-Plugin.Permissions
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 470
	%struct.DSOCacheEntry {
		i64 3874897629, ; hash 0xe6f63edd, from name: Xamarin.Android.Arch.Lifecycle.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 471
	%struct.DSOCacheEntry {
		i64 3879737085, ; hash 0xe74016fd, from name: libaot-System.Net.Http.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 472
	%struct.DSOCacheEntry {
		i64 3882710139, ; hash 0xe76d747b, from name: aot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 473
	%struct.DSOCacheEntry {
		i64 3891366301, ; hash 0xe7f1899d, from name: aot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 474
	%struct.DSOCacheEntry {
		i64 3902090279, ; hash 0xe8952c27, from name: aot-Xamarin.Android.Support.v7.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 475
	%struct.DSOCacheEntry {
		i64 3909090127, ; hash 0xe8fffb4f, from name: aot-CasosTotalizadores
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 476
	%struct.DSOCacheEntry {
		i64 3914259587, ; hash 0xe94edc83, from name: Plugin.Connectivity
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 477
	%struct.DSOCacheEntry {
		i64 3916492297, ; hash 0xe970ee09, from name: libaot-Xamarin.Android.Support.Core.Utils.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 478
	%struct.DSOCacheEntry {
		i64 3920568202, ; hash 0xe9af1f8a, from name: libaot-Lottie.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 479
	%struct.DSOCacheEntry {
		i64 3929739338, ; hash 0xea3b104a, from name: FFImageLoading.Transformations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 480
	%struct.DSOCacheEntry {
		i64 3934808307, ; hash 0xea8868f3, from name: libaot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 481
	%struct.DSOCacheEntry {
		i64 3934820131, ; hash 0xea889723, from name: Toasts.Forms.Plugin.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 482
	%struct.DSOCacheEntry {
		i64 3943669303, ; hash 0xeb0f9e37, from name: libaot-Xamarin.Forms.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 483
	%struct.DSOCacheEntry {
		i64 3946662420, ; hash 0xeb3d4a14, from name: aot-Xamarin.Android.Support.Transition
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 484
	%struct.DSOCacheEntry {
		i64 3948743942, ; hash 0xeb5d0d06, from name: libaot-FFImageLoading
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 485
	%struct.DSOCacheEntry {
		i64 3961090369, ; hash 0xec197141, from name: aot-Xamarin.Android.Support.Core.Utils
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 486
	%struct.DSOCacheEntry {
		i64 3967165417, ; hash 0xec7623e9, from name: Xamarin.GooglePlayServices.Location
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 487
	%struct.DSOCacheEntry {
		i64 3980295403, ; hash 0xed3e7ceb, from name: libaot-System.Net.Http.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 488
	%struct.DSOCacheEntry {
		i64 3981289342, ; hash 0xed4da77e, from name: libaot-Xamarin.Android.Support.Media.Compat
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 489
	%struct.DSOCacheEntry {
		i64 3981417863, ; hash 0xed4f9d87, from name: aot-UXDivers.Artina.Shared
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 490
	%struct.DSOCacheEntry {
		i64 3982095309, ; hash 0xed59f3cd, from name: libaot-DevExpress.Mobile.Grid.v17.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 491
	%struct.DSOCacheEntry {
		i64 3983604604, ; hash 0xed70fb7c, from name: aot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 492
	%struct.DSOCacheEntry {
		i64 3991557191, ; hash 0xedea5447, from name: aot-System.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 493
	%struct.DSOCacheEntry {
		i64 4000416013, ; hash 0xee71810d, from name: Plugin.Media.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 494
	%struct.DSOCacheEntry {
		i64 4010489438, ; hash 0xef0b365e, from name: libaot-Xamarin.Android.Arch.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 495
	%struct.DSOCacheEntry {
		i64 4019695822, ; hash 0xef97b0ce, from name: libaot-DevExpress.Mobile.Core.v17.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 496
	%struct.DSOCacheEntry {
		i64 4040627290, ; hash 0xf0d7145a, from name: aot-Xamarin.GooglePlayServices.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 497
	%struct.DSOCacheEntry {
		i64 4046097104, ; hash 0xf12a8ad0, from name: aot-System.ServiceModel.Internals.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 498
	%struct.DSOCacheEntry {
		i64 4063390766, ; hash 0xf2326c2e, from name: aot-Xamarin.Android.Arch.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 499
	%struct.DSOCacheEntry {
		i64 4076570623, ; hash 0xf2fb87ff, from name: aot-Xamarin.Android.Support.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 500
	%struct.DSOCacheEntry {
		i64 4093800726, ; hash 0xf4027116, from name: aot-Xamarin.Android.Arch.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 501
	%struct.DSOCacheEntry {
		i64 4109052405, ; hash 0xf4eb29f5, from name: libaot-Xamarin.Android.Support.Transition.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 502
	%struct.DSOCacheEntry {
		i64 4117558572, ; hash 0xf56cf52c, from name: aot-Xamarin.GooglePlayServices.Maps.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 503
	%struct.DSOCacheEntry {
		i64 4151237749, ; hash 0xf76edc75, from name: System.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 504
	%struct.DSOCacheEntry {
		i64 4154531413, ; hash 0xf7a11e55, from name: aot-System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 505
	%struct.DSOCacheEntry {
		i64 4168230062, ; hash 0xf87224ae, from name: libaot-FFImageLoading.Forms.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 506
	%struct.DSOCacheEntry {
		i64 4177222393, ; hash 0xf8fb5af9, from name: aot-Xamarin.Android.Support.Annotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 507
	%struct.DSOCacheEntry {
		i64 4195517926, ; hash 0xfa1285e6, from name: libaot-Xamarin.GooglePlayServices.Base.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 508
	%struct.DSOCacheEntry {
		i64 4196463284, ; hash 0xfa20f2b4, from name: aot-Xamarin.Android.Arch.Lifecycle.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 509
	%struct.DSOCacheEntry {
		i64 4202493026, ; hash 0xfa7cf462, from name: libaot-System.Data.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 510
	%struct.DSOCacheEntry {
		i64 4206166980, ; hash 0xfab503c4, from name: libaot-Xamarin.Android.Support.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 511
	%struct.DSOCacheEntry {
		i64 4209401663, ; hash 0xfae65f3f, from name: libaot-Xamarin.Android.Support.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 512
	%struct.DSOCacheEntry {
		i64 4216688043, ; hash 0xfb558dab, from name: aot-System.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 513
	%struct.DSOCacheEntry {
		i64 4219003402, ; hash 0xfb78e20a, from name: Xamarin.Android.Support.v7.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 514
	%struct.DSOCacheEntry {
		i64 4225188309, ; hash 0xfbd741d5, from name: libaot-Xamarin.Android.Support.Core.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 515
	%struct.DSOCacheEntry {
		i64 4257053465, ; hash 0xfdbd7b19, from name: libaot-FFImageLoading.Platform.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 516
	%struct.DSOCacheEntry {
		i64 4264013839, ; hash 0xfe27b00f, from name: libaot-System.Runtime.Serialization.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 517
	%struct.DSOCacheEntry {
		i64 4270835919, ; hash 0xfe8fc8cf, from name: aot-FFImageLoading.Platform
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 518
	%struct.DSOCacheEntry {
		i64 4281114103, ; hash 0xff2c9df7, from name: FFImageLoading.Forms.Droid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 519
	%struct.DSOCacheEntry {
		i64 4294359152, ; hash 0xfff6b870, from name: aot-Lottie.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}
], align 8; end of 'dso_cache' array

@__XamarinAndroidBundledAssembly_name_0 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_1 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_2 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_3 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_4 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_5 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_6 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_7 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_8 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_9 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_10 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_11 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_12 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_13 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_14 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_15 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_16 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_17 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_18 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_19 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_20 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_21 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_22 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_23 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_24 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_25 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_26 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_27 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_28 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_29 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_30 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_31 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_32 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_33 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_34 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_35 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_36 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_37 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_38 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_39 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_40 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_41 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_42 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_43 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_44 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_45 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_46 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_47 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_48 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_49 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_50 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_51 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_52 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_53 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_54 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_55 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_56 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_57 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_58 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_59 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_60 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_61 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_62 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_63 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_64 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_65 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_66 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_67 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_68 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_69 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_70 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_71 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_72 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_73 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_74 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_75 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_76 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_77 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_78 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_79 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_80 = internal global [63 x i8] zeroinitializer, align 1
@__XamarinAndroidBundledAssembly_name_81 = internal global [63 x i8] zeroinitializer, align 1


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
], align 4; end of 'bundled_assemblies' array


; Assembly store individual assembly data
@assembly_store_bundled_assemblies = local_unnamed_addr global [0 x %struct.AssemblyStoreSingleAssemblyRuntimeData] zeroinitializer, align 4

; Assembly store data
@assembly_stores = local_unnamed_addr global [0 x %struct.AssemblyStoreRuntimeData] zeroinitializer, align 4

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
