package jsfl;

typedef Layer =
{
	var color : Dynamic;
	var frameCount : Int;
	var frames : Array<Frame>;
	var height : Int;
	var layerType : String;
	var locked : Bool;
	var name : String;
	var outline : Bool;
	var parentLayer : Layer;
	var visible : Bool;
}