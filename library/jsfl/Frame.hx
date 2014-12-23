package jsfl;

typedef Frame =
{
	var actionScript : String;
	var duration : Int;
	var elements : Array<Element>;
	var hasCustomEase : Bool;
	var labelType : String;
	var motionTweenOrientToPath : Bool;
	var motionTweenRotate : String;
	var motionTweenRotateTimes : Int;
	var motionTweenScale : Bool;
	var motionTweenSnap : Bool;
	var motionTweenSync : Bool;
	var name : String;
	var shapeTweenBlend : String;
	var soundEffect : String;
	var soundLibraryItem : SoundItem;
	var soundLoop : Int;
	var soundLoopMode : String;
	var soundName : String;
	var soundSync : String;
	var startFrame : Int;
	var tweenEasing : Int;
	var tweenInstanceName : String;
	var tweenType : String;
	var useSingleEaseCurve : Bool;
	
	function convertMotionObjectTo2D() : Void;
	function convertMotionObjectTo3D() : Void;
	function getCustomEase(?property:String) : Array<JSFLPoint>;
	function getMotionObjectXML() : String;
	function hasMotionPath() : Bool;
	function is3DMotionObject() : Bool;
	function isMotionObject() : Bool;
	function selectMotionPath() : Void;
	function setCustomEase(property:String, easeCurve:Array<JSFLPoint>) : Void;
	function setMotionObjectDuration(duration:Int, stretchExistingKeyframes:Bool) : Void;
	function setMotionObjectXML(xmlstr:String, endAtCurrentLocation:Bool) : Void;
}