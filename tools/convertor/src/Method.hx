using StringTools;
using Lambda;

class Method
{
	public var type : String;
	public var name : String;
	public var params : Array<MethodParam>;
	public var desc : String;
	public var isStatic : Bool;
	
	public function new(type:String, name:String, params:Array<MethodParam>, desc:String, isStatic:Bool)
	{
		this.type = type;
		this.name = name;
		this.params = params;
		this.desc = desc;
		this.isStatic = isStatic;
	}
	
	public function toString(next:Method) : String
	{
		var r = "";
		
		if (desc != null && desc != "")
		{
			r += "\t/**\n";
			if (desc != null && desc != "" || params.exists(function(p) return p.desc != null && p.desc != ""))
			{
				r += desc.split("\n").map(function(s) return "\t * " + s + "\n").join("");
				for (param in params)
				{
					r += "\t * @" + param.name + param.desc.split("\n").map(function(s) return "\t * " + s + "\n").join("").substr("\t *".length);
				}
			}
			r += "\t *" + "/\n";
		}
		
		if (next != null && name == next.name)
		{
			// override
			if (
				params.map(methodParamToString).join(", ") != next.params.map(methodParamToString).join(", ") 
			 || type != next.type
			)
			{
				r += "\t@:overload(function(" + params.map(methodParamToString).join(", ") + ") : " + type + " {})\n";
			}
		}
		else
		{
			r += "\t" + (isStatic ? "static " : "") + "function " + name + "(" + params.map(methodParamToString).join(", ") + ")" + " : " + type + ";\n";
		}
		
		return r;
	}
	
	public static function methodParamToString(p:MethodParam) : String
	{
		if (p == null) return "???";
		
		return (p.optional ? "?" : "") + (p.name != "var" ? p.name : "_" + p.name) + ":" + p.type;
	}
}