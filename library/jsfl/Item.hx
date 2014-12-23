package jsfl;

typedef Item =
{
	var itemType : String;
	var linkageBaseClass : String;
	var linkageClassName : String;
	var linkageExportForAS : Bool;
	var linkageExportForRS : Bool;
	var linkageExportInFirstFrame : Bool;
	var linkageIdentifier : String;
	var linkageImportForRS : Bool;
	var linkageURL : String;
	var name : String;
	
	function addData(name:String, type:String, data:Dynamic) : Void;
	function getData(name:String) : Dynamic;
	function hasData(name:String) : Bool;
	function removeData(name:String) : Void;
}