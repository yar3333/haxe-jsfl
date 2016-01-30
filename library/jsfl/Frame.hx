package jsfl;

typedef Frame =
{
	/**
	 * Flash Professional CS5.
	 * Converts the selected motion object to a 2D motion object.
	 */
	function convertMotionObjectTo2D() : Void;
	/**
	 * Flash Professional CS5.
	 * Converts the selected motion object to a 3D motion object.
	 */
	function convertMotionObjectTo3D() : Void;
	/**
	 * Flash Professional CC.
	 * Converts the current frame to Frame-by-Frame Animation. 
	 * @return boolean. Returns true if the frame contains animation that can be converted to frame by frame animation. For example: return true for Motion Tween frame or Classic Tween frame; return false for other type of frame such as static.
	 */
	function convertToFrameByFrameAnimation() : Bool;
	/**
	 * Flash MX 2004.
	 * A string that represents ActionScript code. To insert a new line character, use "\n".
	 */
	var actionScript : String;
	/**
	 * Flash MX 2004.
	 * Read-only. An integer that represents the number of frames in a frame sequence.
	 */
	var duration : Int;
	/**
	 * Flash MX 2004.
	 * Read-only. An array of Element objects (see Element object). The order of elements is the order in which theyare stored in the FLA file. If there are multiple shapes on the Stage, and each is ungrouped, Flash treats them as oneelement. If each shape is grouped, so there are multiple groups on the Stage, Flash sees them as separate elements. Inother words, Flash treats raw, ungrouped shapes as a single element, regardless of how many separate shapes are onthe Stage. If a frame contains three raw, ungrouped shapes, for example, then elements.length in that frame returnsa value of 1. To work around this issue, select each shape individually and group it .
	 */
	var elements : Array<Element>;
	/**
	 * Flash 8.
	 * Returns an array of objects that represent the control points for the cubic B├йzier curve that defines the easecurve.
	 * @param property An optional string that specifies the property for which you want to return the custom ease value.
	 */
	function getCustomEase(?property:String) : Array<JSFLPoint>;
	/**
	 * Flash Professional CS5.
	 * Returns a string of the motion XML from the selected motion object.
	 */
	function getMotionObjectXML() : String;
	/**
	 * Flash Professional CC.
	 * Gets the sound envelope data of any frame.
	 */
	function getSoundEnvelope() : SoundItem;
	/**
	 * Flash Professional CC.
	 * Gets the limits (start, end) for a custom Sound envelope that is applied to the frame sound.
	 * @return a structure that contain start and end fields.
	 */
	function getSoundEnvelopeLimits() : {start:Int, end:Int};
	/**
	 * Flash 8.
	 * A Boolean value. If true, the frame gets its ease information from the custom ease curve. If false, the framegets its ease information from the ease value.
	 */
	var hasCustomEase : Bool;
	/**
	 * Flash Professional CS5.
	 * A Boolean value. Lets you know whether the current selection includes a motion path.
	 */
	function hasMotionPath() : Bool;
	/**
	 * Flash Professional CS5.
	 * A Boolean value. Lets you know whether the current selection is a 3D motion object.
	 */
	function is3DMotionObject() : Bool;
	/**
	 * Flash Professional CC.
	 * a Boolean value. Lets you know whether the frame contains any elements.
	 */
	function isEmpty() : Bool;
	/**
	 * Flash Professional CS5.
	 * A Boolean value. Lets you know whether the current selection is a motion object.
	 */
	function isMotionObject() : Bool;
	/**
	 * Flash MX 2004.
	 * A Boolean value that specifies whether the tweened element rotates the element as it moves along a path tomaintain its angle with respect to each point on the path (true) or whether it does not rotate (false).If you want to specify a value for this property, you should set frame.motionTweenRotate to "none".
	 */
	var motionTweenOrientToPath : Bool;
	/**
	 * Flash MX 2004.
	 * A string that specifies how the tweened element rotates. Acceptable values are "none", "auto","clockwise", and "counter-clockwise". A value of "auto" means the object will rotate in the direction requiringthe least motion to match the rotation of the object in the following keyframe.If you want to specify a value for frame.motionTweenOrientToPath, set this property to "none".
	 */
	var motionTweenRotate : MotionTweenRotate;
	/**
	 * Flash MX 2004.
	 * An integer that specifies the number of times the tweened element rotates between the starting keyframe andthe next keyframe.
	 */
	var motionTweenRotateTimes : Int;
	/**
	 * Flash MX 2004.
	 * A Boolean value that specifies whether the tweened element scales to the size of the object in the followingkeyframe, increasing its size with each frame in the tween (true), or doesnтАЩt scale (false).
	 */
	var motionTweenScale : Bool;
	/**
	 * Flash MX 2004.
	 * A Boolean value that specifies whether the tweened element automatically snaps to the nearest point on themotion guide layer associated with this frameтАЩs layer (true) or not (false).
	 */
	var motionTweenSnap : Bool;
	/**
	 * Flash MX 2004.
	 * A Boolean value that if set to true, synchronizes the animation of the tweened object with the main timeline.
	 */
	var motionTweenSync : Bool;
	/**
	 * Flash MX 2004.
	 * A string that specifies the type of Frame name. Acceptable values are "none", "name", "comment", and"anchor". Setting a label to "none" clears the frame.name property.
	 */
	var labelType : LabelType;
	/**
	 * Flash MX 2004.
	 * A string that specifies the name of the frame.
	 */
	var name : String;
	/**
	 * Flash Professional CS5.
	 * A Boolean value. Selects (true) or deselects (false) the motion path of the current motion object.
	 */
	function selectMotionPath() : Void;
	/**
	 * Flash 8.
	 * Specifies an array of control point and tangent endpoint coordinates that describe a cubic B├йzier curve to beused as a custom ease curve. This array is constructed by the horizontal (ordinal: left to right) position of the controlpoints and tangent endpoints.
	 * @param property A string that specifies the property the ease curve should be used for. Acceptable values are "all",
	 * @param easeCurve An array of objects that defines the ease curve. Each array element must be a JavaScript object with x and
	 */
	function setCustomEase(property:String, easeCurve:Array<JSFLPoint>) : Void;
	/**
	 * Flash Professional CS5.
	 * Sets the duration (the tween span length) of the currently selected motion object.
	 * @param duration Specifies the number of frames for the tween span of the selected motion object.
	 * @param stretchExistingKeyframes A boolean value that determines whether the tween span is stretched, or if frames are
	 */
	function setMotionObjectDuration(duration:Int, stretchExistingKeyframes:Bool) : Void;
	/**
	 * Flash Professional CS5.
	 * Applies the specified motion XML to the selected motion object.
	 * @param xmlstr A string value that specifies the XML string.
	 * @param endAtCurrentLocation A boolean value that determines whether the tween starts or ends at the current position.
	 */
	function setMotionObjectXML(xmlstr:String, endAtCurrentLocation:Bool) : Void;
	/**
	 * Flash Professional CC.
	 * Sets the sound envelope of any frame with sound file. The soundEnv object is an array and every element of array contains the following properties:
	 * - mark
	 * - leftChannel
	 * - rightChannel
	 * @param soundEnv A sound envelope.
	 */
	function setSoundEnvelope(soundEnv:Dynamic) : Void;
	/**
	 * Flash Professional CC.
	 * Sets the sound envelope limits of any frame with a sound file.
	 * @param limits A structure that contains start and end fields that signify the limits for a custom sound envelope.
	 */
	function setSoundEnvelopeLimits(limits:{start:Int, end:Int}) : Void;
	/**
	 * Flash MX 2004.
	 * A string that specifies how a shape tween is blended between the shape in the keyframe at the start of thetween and the shape in the following keyframe. Acceptable values are "distributive" and "angular".
	 */
	var shapeTweenBlend : ShapeTweenBlend;
	/**
	 * Flash MX 2004.
	 * A string that specifies effects for a sound that is attached directly to a frame (frame.soundLibraryItem).Acceptable values are "none", "left channel", "right channel", "fade left to right", "fade right toleft", "fade in", "fade out", and "custom".
	 */
	var soundEffect : SoundEffect;
	/**
	 * Flash MX 2004.
	 * A library item (see SoundItem object) used to create a sound. The sound is attached directly to the frame.
	 */
	var soundLibraryItem : SoundItem;
	/**
	 * Flash MX 2004.
	 * An integer value that specifies the number of times a sound that is attached directly to a frame(frame.soundLibraryItem) plays. If you want to specify a value for this property, set frame.soundLoopMode to"repeat".
	 */
	var soundLoop : Int;
	/**
	 * Flash MX 2004.
	 * A string that specifies whether a sound that is attached directly to a frame (frame.soundLibraryItem)should play a specific number of times or loop indefinitely. Acceptable values are "repeat" and "loop". To specifythe number of times the sound should play, set a value for frame.soundLoop.
	 */
	var soundLoopMode : SoundLoopMode;
	/**
	 * Flash MX 2004.
	 * A string that specifies the name of a sound that is attached directly to a frame (frame.soundLibraryItem),as stored in the library.
	 */
	var soundName : String;
	/**
	 * Flash MX 2004.
	 * A string that specifies the sync behavior of a sound that is attached directly to a frame(frame.soundLibraryItem). Acceptable values are "event", "stop", "start", and "stream".
	 */
	var soundSync : String;
	/**
	 * Flash MX 2004.
	 * Read-only. The index of the first frame in a sequence.
	 */
	var startFrame : Int;
	/**
	 * Flash MX 2004.
	 * An integer that specifies the amount of easing that should be applied to the tweened object. Acceptable valuesare -100 to 100. To begin the motion tween slowly and accelerate the tween toward the end of the animation, use avalue between -1 and -100. To begin the motion tween rapidly and decelerate the tween toward the end of theanimation, use a positive value between 1 and 100.
	 */
	var tweenEasing : Int;
	/**
	 * Flash Professional CS5.
	 * A string that assigns an instance name to the selected motion object.
	 */
	var tweenInstanceName : String;
	/**
	 * Flash MX 2004.
	 * A string that specifies the type of tween; acceptable values are "motion", "shape", or "none". The value"none" removes the motion tween. Use the timeline.createMotionTween() method to create a motion tween.If you specify "motion", the object in the frame must be a symbol, text field, or grouped object. It will be tweened fromits location in the current keyframe to the location in the following keyframe.If you specify "shape", the object in the frame must be a shape. It will blend from its shape in the current keyframe tothe shape in the following keyframe.
	 */
	var tweenType : TweenType;
	/**
	 * Flash 8.
	 * A Boolean value. If true, a single custom ease curve is used for easing information for all properties. If false,each property has its own ease curve.This property is ignored if the frame doesnтАЩt have custom easing applied.
	 */
	var useSingleEaseCurve : Bool;
}

@:enum
abstract LabelType(String) {
	var None = "none";
	var Name = "name";
	var Comment = "comment";
	var Anchor = "anchor";
}

@:enum
abstract MotionTweenRotate(String) {
	var None = "none";
	var Auto = "auto";
	var Clockwise = "clockwise";
	var CounterClockwise = "counter-clockwise";
}

@:enum
abstract CustomEaseProperty(String) {
	var All = "all";
	var Position = "position";
	var Rotation = "rotation";
	var Scale = "scale";
	var Color = "color";
	var Filters = "filters";
}

@:enum
abstract ShapeTweenBlend(String) {
	var Distributive = "distributive";
	var Angular = "angular";
}

@:enum
abstract SoundEffect(String) {
	var None = "none";
	var LeftChannel = "left channel";
	var RightChannel = "right channel";
	var FadeLeftToRight = "fade left to right";
	var FadeRightToLeft = "fade right to left";
	var FadeIn = "fade in";
	var FadeOut = "fade out";
	var Custom = "custom";
}

@:enum
abstract SoundLoopMode(String) {
	var Repeat = "repeat";
	var Loop = "loop";
}

@:enum
abstract TweenType(String) {
	var Motion = "motion";
	var Shape = "shape";
	var None = "none";
}