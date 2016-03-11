package jsfl;

typedef Tween = {
	/**
	 * Flash Pro CC.
	 * Gets color transformation data between frames.
	 * @param frameIndex Offset index of interpolated frame.
	 * @return Value object {"colorAlphaAmount", "colorAlphaPercent", "colorRedAmount", "colorRedPercent", "colorGreenAmount", "colorGreenPercent", "colorBlueAmount", "colorBluePercent"}.
	 */
	function getColorTransform(frameIndex : Int) : Dynamic;
	/**
	 * Flash Pro CC.
	 * Returns filters data of a selected frame from a tween span.
	 * @param frameIndex Index of the frame from which filter data is to be retrieved.
	 * @return array of Filter objects.
	 */
	function getFilters(frameIndex : Int) : Array<Filter>;
	/**
	 * Flash Pro CC.
	 * Returns Matrix object that represents geometric transformation of a tween within a user-defined range (from offset to a selected frame).
	 * @param frameIndex Offset index of the frame from which geometric transformations have to be retrieved.
	 * @return Matrix object that represents geometric transformations at the frame offset.
	 */
	function getGeometricTransform(frameIndex : Int) : Matrix;
	/**
	 * Flash Pro CC.
	 * Returns interpolated shape of a selected frame within a tween-span.
	 * @param frameIndex Offset index of the frame from which shape data has to be retrieved.
	 * @return shape coordinates at the frame offset.
	 */
	function getShape(frameIndex : Int) : Shape;
	/**
	 * Flash Pro CC.
	 * Duration of a tween span that is equal to number of frames in a tween.
	 */
	var duration : Float;
	/**
	 * Flash Pro CC.
	 * Start frame of a tween.
	 */
	var startFrame : Int;
	/**
	 * Flash Pro CC.
	 * Specifies the type of tween. For example, Motion or Shape.
	 */
	var tweenType : TweenType;
}

@:enum
abstract TweenType(String) {
	var Motion = "motion";
	var Shape = "shape";
	var None = "none";
}