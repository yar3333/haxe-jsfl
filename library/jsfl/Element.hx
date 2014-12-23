package jsfl;

typedef Element =
{
	var depth : Int;
	var elementType : String;
	var height : Float;
	var layer : Layer;
	var left : Float;
	var locked : Bool;
	var matrix : Matrix;
	var name : String;
	var rotation : Float;
	var scaleX : Float;
	var scaleY : Float;
	var selected : Bool;
	var skewX : Float;
	var skewY : Float;
	var top : Float;
	var transformX : Float;
	var transformY : Float;
	var width : Float;
	var x : Float;
	var y : Float;
	
	function getPersistentData(name:String) : Dynamic;
	function getTransformationPoint() : JSFLPoint;
	function hasPersistentData(name:String) : Bool;
	function removePersistentData(name:String) : Void;
	function setPersistentData(name:String, type:String, value:Dynamic) : Void;
	function setTransformationPoint(transformationPoint:JSFLPoint) : Void;
}