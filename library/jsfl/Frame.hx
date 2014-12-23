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
	var tweenType : String;
	var useSingleEaseCurve : Bool;
	
	function getCustomEase(?property:String) : Array<JSFLPoint>;
	function setCustomEase(property:String, easeCurve:Array<JSFLPoint>) : Void;
}