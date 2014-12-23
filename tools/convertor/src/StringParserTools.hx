using StringTools;

class StringParserTools
{
	public static function capitalize(s:String) : String
	{
		return s.charAt(0).toUpperCase() + s.substr(1);
	}
	
	public static function parseCSV(value:String) : Array<String>
	{
		var elems = [];
		var parCounter = 0;
		var lastCommaIndex = -1;
		for (i in 0...value.length)
		{
			var c = value.charAt(i);
			if (c == "(" || c == "[" || c == "{") parCounter++;
			else
			if (c == ")" || c == "]" || c == "}") parCounter--;
			else
			if (c == "," && parCounter == 0)
			{
				elems.push(value.substring(lastCommaIndex + 1, i).trim());
				lastCommaIndex = i;
			}
		}
		elems.push(value.substring(lastCommaIndex + 1, value.length).trim());
		return elems;
	}
	
	public static function escapeKeyword(s:String) : String
	{
		switch (s)
		{
			case "static", "break":
				return "_" + s;
		}
		return s;
	}
}