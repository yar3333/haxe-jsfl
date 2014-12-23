using stdlib.StringTools;

class Types
{
	public static function convert(type:String) : String
	{
		if (type == null) return "???";
		
		type = type.trim().toLowerCase();
		
		switch (type)
		{
			case "boolean": return "Bool";
			case "integer": return "Int";
		}
		
		return type.capitalize();
	}
}