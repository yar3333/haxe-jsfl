using StringTools;

class Attribute
{
	public var type : String;
	public var name : String;
	public var desc : String;
	public var metas : AttributeMetas;
	
	public function new(type:String, name:String, desc:String, metas:AttributeMetas)
	{
		this.type = type;
		this.name = name;
		this.desc = desc.trim().split("\n").map(function(s) return s.trim()).join("\n");
		this.metas = metas;
	}
	
	public function toString() : String
	{
		var r = "";
		if (desc != null && desc != "" || metas.metaObsolete != "" || metas.metaNew != "" || metas.isUnimplemented || metas.isReadOnly)
		{
			r += "\t/**\n";
			if (desc!= null && desc != "")
			{
				r += desc.split("\n").map(function(s) return "\t * " + s + "\n").join("");
			}
			if (metas.metaObsolete != "") r += "\t * " + metas.metaObsolete + "\n";
			if (metas.metaNew != "")      r += "\t * " + metas.metaNew + "\n";
			if (metas.isUnimplemented)    r += "\t * Unimplemented.\n";
			if (metas.isReadOnly)         r += "\t * ReadOnly.\n";
			r += "\t */\n";
		}
		r += "\tvar " + name + " : " + Types.convert(type) + ";\n";
		return r;
	}
}