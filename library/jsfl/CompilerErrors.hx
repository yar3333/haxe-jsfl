package jsfl;

extern class CompilerErrors
{
	function clear() : Void;
	function save(fileURI:String, ?bAppendToFile:Bool, ?bUseSystemEncoding:Bool) : Void;
}