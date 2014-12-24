package jsfl;

typedef Frame =
{
	/**
	 * A string that represents ActionScript code. To insert a new line character, use "\n".
	 */
	var actionScript : String;
	/**
	 * Read-only. An integer that represents the number of frames in a frame sequence.
	 */
	var duration : Int;
	/**
	 * Read-only. An array of Element objects (see Element object). The order of elements is the order in which theyare stored in the FLA file. If there are multiple shapes on the Stage, and each is ungrouped, Flash treats them as oneelement. If each shape is grouped, so there are multiple groups on the Stage, Flash sees them as separate elements. Inother words, Flash treats raw, ungrouped shapes as a single element, regardless of how many separate shapes are onthe Stage. If a frame contains three raw, ungrouped shapes, for example, then elements.length in that frame returnsa value of 1. To work around this issue, select each shape individually and group it .
	 */
	var elements : Array<Element>;
	/**
	 * A Boolean value. If true, the frame gets its ease information from the custom ease curve. If false, the framegets its ease information from the ease value.
	 */
	var hasCustomEase : Bool;
	/**
	 * A string that specifies the type of Frame name. Acceptable values are "none", "name", "comment", and"anchor". Setting a label to "none" clears the frame.name property.
	 */
	var labelType : String;
	/**
	 * A Boolean value that specifies whether the tweened element rotates the element as it moves along a path tomaintain its angle with respect to each point on the path (true) or whether it does not rotate (false).If you want to specify a value for this property, you should set frame.motionTweenRotate to "none".
	 */
	var motionTweenOrientToPath : Bool;
	/**
	 * A string that specifies how the tweened element rotates. Acceptable values are "none", "auto","clockwise", and "counter-clockwise". A value of "auto" means the object will rotate in the direction requiringthe least motion to match the rotation of the object in the following keyframe.If you want to specify a value for frame.motionTweenOrientToPath, set this property to "none".
	 */
	var motionTweenRotate : String;
	/**
	 * An integer that specifies the number of times the tweened element rotates between the starting keyframe andthe next keyframe.
	 */
	var motionTweenRotateTimes : Int;
	/**
	 * A Boolean value that specifies whether the tweened element scales to the size of the object in the followingkeyframe, increasing its size with each frame in the tween (true), or doesnтАЩt scale (false).
	 */
	var motionTweenScale : Bool;
	/**
	 * A Boolean value that specifies whether the tweened element automatically snaps to the nearest point on themotion guide layer associated with this frameтАЩs layer (true) or not (false).
	 */
	var motionTweenSnap : Bool;
	/**
	 * A Boolean value that if set to true, synchronizes the animation of the tweened object with the main timeline.
	 */
	var motionTweenSync : Bool;
	/**
	 * A string that specifies the name of the frame.
	 */
	var name : String;
	/**
	 * A string that specifies how a shape tween is blended between the shape in the keyframe at the start of thetween and the shape in the following keyframe. Acceptable values are "distributive" and "angular".
	 */
	var shapeTweenBlend : String;
	/**
	 * A string that specifies effects for a sound that is attached directly to a frame (frame.soundLibraryItem).Acceptable values are "none", "left channel", "right channel", "fade left to right", "fade right toleft", "fade in", "fade out", and "custom".
	 */
	var soundEffect : String;
	/**
	 * A library item (see SoundItem object) used to create a sound. The sound is attached directly to the frame.
	 */
	var soundLibraryItem : SoundItem;
	/**
	 * An integer value that specifies the number of times a sound that is attached directly to a frame(frame.soundLibraryItem) plays. If you want to specify a value for this property, set frame.soundLoopMode to"repeat".
	 */
	var soundLoop : Int;
	/**
	 * A string that specifies whether a sound that is attached directly to a frame (frame.soundLibraryItem)should play a specific number of times or loop indefinitely. Acceptable values are "repeat" and "loop". To specifythe number of times the sound should play, set a value for frame.soundLoop.
	 */
	var soundLoopMode : String;
	/**
	 * A string that specifies the name of a sound that is attached directly to a frame (frame.soundLibraryItem),as stored in the library.
	 */
	var soundName : String;
	/**
	 * A string that specifies the sync behavior of a sound that is attached directly to a frame(frame.soundLibraryItem). Acceptable values are "event", "stop", "start", and "stream".
	 */
	var soundSync : String;
	/**
	 * Read-only. The index of the first frame in a sequence.
	 */
	var startFrame : Int;
	/**
	 * An integer that specifies the amount of easing that should be applied to the tweened object. Acceptable valuesare -100 to 100. To begin the motion tween slowly and accelerate the tween toward the end of the animation, use avalue between -1 and -100. To begin the motion tween rapidly and decelerate the tween toward the end of theanimation, use a positive value between 1 and 100.
	 */
	var tweenEasing : Int;
	/**
	 * A string that assigns an instance name to the selected motion object.
	 */
	var tweenInstanceName : String;
	/**
	 * A string that specifies the type of tween; acceptable values are "motion", "shape", or "none". The value"none" removes the motion tween. Use the timeline.createMotionTween() method to create a motion tween.If you specify "motion", the object in the frame must be a symbol, text field, or grouped object. It will be tweened fromits location in the current keyframe to the location in the following keyframe.If you specify "shape", the object in the frame must be a shape. It will blend from its shape in the current keyframe tothe shape in the following keyframe.
	 */
	var tweenType : String;
	/**
	 * A Boolean value. If true, a single custom ease curve is used for easing information for all properties. If false,each property has its own ease curve.This property is ignored if the frame doesnтАЩt have custom easing applied.
	 */
	var useSingleEaseCurve : Bool;
	
	/**
	 * Converts the selected motion object to a 2D motion object.
	 */
	function convertMotionObjectTo2D() : Void;
	/**
	 * Converts the selected motion object to a 3D motion object.
	 */
	function convertMotionObjectTo3D() : Void;
	/**
	 * Returns an array of objects that represent the control points for the cubic B├йzier curve that defines the easecurve.
	 * @property An optional string that specifies the property for which you want to return the custom ease value.
	 */
	function getCustomEase(?property:String) : Array<JSFLPoint>;
	/**
	 * Returns a string of the motion XML from the selected motion object.
	 */
	function getMotionObjectXML() : String;
	/**
	 * A Boolean value. Lets you know whether the current selection includes a motion path.
	 */
	function hasMotionPath() : Bool;
	/**
	 * A Boolean value. Lets you know whether the current selection is a 3D motion object.
	 */
	function is3DMotionObject() : Bool;
	/**
	 * A Boolean value. Lets you know whether the current selection is a motion object.
	 */
	function isMotionObject() : Bool;
	/**
	 * A Boolean value. Selects (true) or deselects (false) the motion path of the current motion object.
	 */
	function selectMotionPath() : Void;
	/**
	 * Specifies an array of control point and tangent endpoint coordinates that describe a cubic B├йzier curve to beused as a custom ease curve. This array is constructed by the horizontal (ordinal: left to right) position of the controlpoints and tangent endpoints.
	 * @property A string that specifies the property the ease curve should be used for. Acceptable values are "all",
	 * @easeCurve An array of objects that defines the ease curve. Each array element must be a JavaScript object with x and
	 */
	function setCustomEase(property:String, easeCurve:Array<JSFLPoint>) : Void;
	/**
	 * Sets the duration (the tween span length) of the currently selected motion object.
	 * @duration Specifies the number of frames for the tween span of the selected motion object.
	 * @stretchExistingKeyframes A boolean value that determines whether the tween span is stretched, or if frames are
	 */
	function setMotionObjectDuration(duration:Int, stretchExistingKeyframes:Bool) : Void;
	/**
	 * Applies the specified motion XML to the selected motion object.
	 * @xmlstr A string value that specifies the XML string.
	 * @endAtCurrentLocation A boolean value that determines whether the tween starts or ends at the current position.
	 */
	function setMotionObjectXML(xmlstr:String, endAtCurrentLocation:Bool) : Void;
}