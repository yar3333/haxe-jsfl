package jsfl;

typedef Parameter =
{
	var category : String;
	function insertItem(index:Int, name:String, value:String, type:String) : Void;
	var listIndex : Dynamic;
	var name : String;
	function removeItem(index:Int) : Void;
	var value : Dynamic;
	var valueType : String;
	var verbose : Int;
}