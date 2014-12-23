package jsfl;

typedef Parameter =
{
	var category : String;
	var listIndex : Int;
	var name : String;
	var value : Dynamic;
	var valueType : String;
	var verbose : Int;
	
	function insertItem(index:Int, name:String, value:String, type:String) : Void;
	function removeItem(index:Int) : Void;
}