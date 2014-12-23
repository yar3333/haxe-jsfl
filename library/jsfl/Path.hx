package jsfl;

extern class Path
{
	function addCubicCurve(xAnchor:Float, yAnchor:Float, x2:Float, y2:Float, x3:Float, y3:Float, x4:Float, y4:Float) : Void;
	function addCurve(xAnchor:Float, yAnchor:Float, x2:Float, y2:Float, x3:Float, y3:Float) : Void;
	function addPoint(x:Float, y:Float) : Void;
	function clear() : Void;
	function close() : Void;
	function makeShape(?bSuppressFill:Bool, ?bSuppressStroke:Bool) : Void;
	function newContour() : Void;
	var nPts : Int;
}