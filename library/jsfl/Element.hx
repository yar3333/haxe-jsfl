package jsfl;

typedef Element =
{
	var depth : Int;
	var elementType : String;
	function getPersistentData(name:String) : Dynamic;
	function getTransformationPoint() : JSFLPoint;
	function hasPersistentData(name:String) : Bool;
	var height : Float;
	var layer : Layer;
	var left : Float;
	var locked : Bool;
	var matrix : Matrix;
	var name : String;
	function removePersistentData(name:String) : Void;
	var rotation : Float;
	var scaleX : Float;
	var scaleY : Float;
	var selected : Bool;
	function setPersistentData(name:String, type:String, value:Dynamic) : Void;
	function setTransformationPoint(transformationPoint:JSFLPoint) : Void;
	var skewX : Float;
	var skewY : Float;
	var top : Float;
	var transformX : Float;
	var transformY : Float;
	var width : Float;
	var x : Float;
	var y : Float;
}