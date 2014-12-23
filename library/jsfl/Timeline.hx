package jsfl;

typedef Timeline =
{
	var currentFrame : Int;
	var currentLayer : Int;
	var frameCount : Int;
	var layerCount : Int;
	var layers : Array<Layer>;
	var libraryItem : Item;
	var name : String;
	
	function addMotionGuide() : Int;
	function addNewLayer(?name:String, ?layerType:String, ?bAddAbove:Bool) : Int;
	function clearFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function clearKeyframes(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function convertToBlankKeyframes(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function convertToKeyframes(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function copyFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function copyLayers(?startLayerIndex:Int, ?endLayerIndex:Int) : Void;
	function copyMotion() : Void;
	function copyMotionAsAS3() : Void;
	function createMotionObject(?startFrame:Frame, ?endFrame:Frame) : Void;
	function createMotionTween(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function cutFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function cutLayers(?startLayerIndex:Int, ?endLayerIndex:Int) : Void;
	function deleteLayer(?index:Int) : Void;
	function duplicateLayers(startLayerIndex:Int, endLayerIndex:Int) : Void;
	function expandFolder(bExpand:Bool, ?bRecurseNestedParents:Bool, ?index:Int) : Void;
	function findLayerIndex(name:String) : Array<Int>;
	function getFrameProperty(property:String, ?startFrameIndex:Int, ?endFrameIndex:Int) : Dynamic;
	function getGuidelines() : String;
	function getLayerProperty(property:String) : Dynamic;
	function getSelectedFrames() : Array<Int>;
	function getSelectedLayers() : Array<Int>;
	function insertBlankKeyframe(?frameNumIndex:Int) : Void;
	function insertFrames(?numFrames:Int, ?bAllLayers:Bool, ?frameNumIndex:Int) : Void;
	function insertKeyframe(?frameNumIndex:Int) : Void;
	function pasteFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function pasteLayers(?layerIndex:Int) : Int;
	function pasteMotion() : Void;
	function removeFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function removeMotionObject(?startFrame:Frame, ?endFrame:Frame) : Void;
	function reorderLayer(layerToMove:Int, layerToPutItBy:Int, ?bAddBefore:Bool) : Void;
	function reverseFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function selectAllFrames() : Void;
	function setFrameProperty(property:String, value:Dynamic, ?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	function setGuidelines(xmlString:String) : Bool;
	function setLayerProperty(property:String, value:Dynamic, ?layersToChange:String) : Void;
	function setSelectedFrames(startFrameIndex:Int, ?endFrameIndex:Int, ?bReplaceCurrentSelection:Bool, ?selectionList:Array<Int>) : Void;
	function setSelectedLayers(index:Int, ?bReplaceCurrentSelection:Bool) : Void;
	function showLayerMasking(?layer:Int) : Void;
	function startPlayback() : Void;
	function stopPlayback() : Void;
}