using StringTools;

class Constant
{
	public var name : String;
	public var value : String;
	public var desc : String;
	
	public function new(name:String, value:String, desc:String)
	{
		this.name = name;
		this.value = value;
		this.desc = desc.trim().split("\n").map(function(s) return s.trim()).join("\n");
	}
	
	public function toString() : String
	{
		var r = "";
		if (desc != null && desc != "")
		{
			r += "\t/**\n";
			r += desc.split("\n").map(function(s) return "\t * " + s + "\n").join("");
			r += "\t */\n";
		}
		r += "\tstatic inline var " + name + " = " + value + ";\n";
		return r;
	}
}