using StringTools;
using StringParserTools;

class Types
{
	public static function convert(type:String) : String
	{
		type = type.trim();
		
		if (type.endsWith(" array"))
		{
			return "Array<" + convert(type.substr(0, type.length - " array".length)) + ">";
		}
		
		switch (type)
		{
			case "boolean": return "Bool";
			case "double": return "Float";
			case "unsigned long": return "ULong";
			case "unsigned long long": return "ULongLong";
			case "unsigned int": return "UInt";
			case "unsigned short": return "UShort";
			case "long long": return "LongLong";
			case "ACString (US-ASCII)": return "ACString";
			case "jsval": return "JSVal";
			case "octet_ptr": return "OctetPtr";
			case "uint32_t": return "UInt32";
			case "int64_t": return "Int64";
		}
		
		return type.capitalize();
	}
}