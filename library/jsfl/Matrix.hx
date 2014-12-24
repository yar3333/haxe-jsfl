package jsfl;

typedef Matrix =
{
	/**
	 * A floating-point value that specifies the (0,0) element in the transformation matrix. This value represents thescale factor of the objectтАЩs x-axis.
	 */
	var a : Float;
	/**
	 * A floating-point value that specifies the (0,1) element in the matrix. This value represents the vertical skewof a shape; it causes Flash to move the shapeтАЩs right edge along the vertical axis.The matrix.b and matrix.c properties in a matrix represent skewing (see matrix.c).
	 */
	var b : Float;
	/**
	 * A floating-point value that specifies the (1,0) element in the matrix. This value causes Flash to skew the objectby moving its bottom edge along a horizontal axis.The matrix.b and matrix.c properties in a matrix represent skewing.
	 */
	var c : Float;
	/**
	 * A floating-point value that specifies the (1,1) element in the matrix. This value represents the scale factor ofthe objectтАЩs y-axis.
	 */
	var d : Float;
	/**
	 * A floating-point value that specifies the x-axis location of a symbolтАЩs registration point (also origin point orzero point) or the center of a shape. It defines the x translation of the transformation.You can move an object by setting the matrix.tx and matrix.ty properties (see matrix.ty).
	 */
	var tx : Float;
	/**
	 * A floating-point value that specifies the y-axis location of a symbolтАЩs registration point or the center of ashape. It defines the y translation of the transformation.You can move an object by setting the matrix.tx and matrix.ty properties.
	 */
	var ty : Float;
}