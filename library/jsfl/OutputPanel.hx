package jsfl;

extern class OutputPanel
{
	function clear() : Void;
	function save(fileURI:String, ?bAppendToFile:Bool, ?bUseSystemEncoding:Bool) : Void;
	function trace(message:Dynamic) : Void;
}