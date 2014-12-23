package jsfl;

typedef Timeline =
{
	function addMotionGuide() : Int;
	function addNewLayer(?name:String, ?laterType:String, ?bAddAbove:Bool) : Int;
	function clearFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function clearKeyframes(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function convertToBlankKeyframes(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function convertToKeyframes(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function copyFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function copyMotion() : Void;
	function copyMotionAsAS3() : Void;
	function createMotionTween(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	var currentFrame : Int;
	var currentLayer : Int;
	function cutFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function deleteLayer(?index:Int) : Void;
	function expandFolder(bExpand:Bool, ?bRecurseNestedParents:Bool, ?index:Int) : Void;
	function findLayerIndex(name:String) : Array<Int>;
	var frameCount : Int;
	function getFrameProperty(property:String, ?startFrameIndex:Int, ?endFrameIndex:Int) : Dynamic;
	function getLayerProperty(property:String) : Dynamic;
	function getSelectedFrames() : Array<Int>;
	function getSelectedLayers() : Array<Int>;
	function insertBlankKeyframe(?frameNumIndex:Int) : Void;
	function insertFrames(?numFrames:Int, ?bAllLayers:Bool, ?frameNumIndex:Int) : Void;
	function insertKeyframe(?frameNumIndex:Int) : Void;
	var layerCount : Int;
	var layers : Array<Layer>;
	var name : String;
	function pasteFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function pasteMotion() : Void;
	function removeFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function reorderLayer(layerToMove:Int, layerToPutItBy:Int, ?bAddBefore:Bool) : Void;
	function reverseFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function selectAllFrames() : Void;
	function setFrameProperty(property:String, value:Dynamic, ?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function setLayerProperty(property:String, value:Dynamic, ?layersToChange:String) : Void;
	function setSelectedFrames(startFrameIndex:Dynamic, ?endFrameIndex:Dynamic, ?bReplaceCurrentSelection:Bool) : Void;
	function setSelectedLayers(index:Int, ?bReplaceCurrentSelection:Bool) : Void;
	function showLayerMasking(?layer:Int) : Void;
}