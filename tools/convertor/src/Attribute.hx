using StringTools;

class Attribute
{
	public var type : String;
	public var name : String;
	public var desc : String;
	public var readOnly : Bool;
	
	public function new(type:String, name:String, desc:String, readOnly:Bool)
	{
		this.type = type;
		this.name = name;
		this.desc = desc.trim().split("\n").map(function(s) return s.trim()).join("\n");
		this.readOnly = readOnly;
	}
	
	public function toString() : String
	{
		var r = "";
		if (desc != null && desc != "")
		{
			r += "\t/**\n";
			if (desc!= null && desc != "")
			{
				r += desc.split("\n").map(function(s) return "\t * " + s + "\n").join("");
			}
			r += "\t *" + "/\n";
		}
		r += "\tvar " + name + " : " + type + ";\n";
		return r;
	}
}