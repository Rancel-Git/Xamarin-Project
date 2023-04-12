using System;
namespace CasosTotalizadores
{
	public static class AssemblyGlobal
	{
		public const string Company = "EDENORTE";

		public const string ProductLine = "Casos Totalizadores";

		public const string Year = "2018";

		public const string Copyright = Company + " - " + Year;

#if DEBUG
		public const string Configuration = "Debug";
#elif RELEASE
		public const string Configuration = "Release";
#else
		public const string Configuration = "Unkown";
#endif
	}
}
