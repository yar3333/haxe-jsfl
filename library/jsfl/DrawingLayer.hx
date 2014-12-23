package jsfl;

typedef DrawingLayer =
{
	function beginDraw(?persistentDraw:Bool) : Void;
	function beginFrame() : Void;
	function cubicCurveTo(x1Ctl:Float, y1Ctl:Float, x2Ctl:Float, y2Ctl:Float, xEnd:Float, yEnd:Float) : Void;
	function curveTo(xCtl:Float, yCtl:Float, xEnd:Float, yEnd:Float) : Void;
	function drawPath(path:Path) : Void;
	function endDraw() : Void;
	function endFrame() : Void;
	function lineTo(x:Float, y:Float) : Void;
	function moveTo(x:Float, y:Float) : Void;
	function newPath() : Path;
	function setColor(color:Dynamic) : Void;
}