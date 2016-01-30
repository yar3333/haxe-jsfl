package jsfl;

typedef Math =
{
	/**
	 * Flash MX 2004.
	 * Performs a matrix concatenation and returns the result.
	 * @param mat1 Specify the Matrix objects to be concatenated (see Matrix object). Each parameter must be an object with
	 * @param mat2 Specify the Matrix objects to be concatenated (see Matrix object). Each parameter must be an object with
	 */
	function concatMatrix(mat1:Matrix, mat2:Matrix) : Matrix;
	/**
	 * Flash MX 2004.
	 * Returns the inverse of the specified matrix.
	 * @param mat Indicates the Matrix object to invert (see Matrix object). It must have the following fields: a, b, c, d, tx, and ty.
	 */
	function invertMatrix(mat:Matrix) : Matrix;
	/**
	 * Flash MX 2004.
	 * Computes the distance between two points.
	 * @param pt1 Specify the points between which distance is measured.
	 * @param pt2 Specify the points between which distance is measured.
	 */
	function pointDistance(pt1:JSFLPoint, pt2:JSFLPoint) : Float;
	/**
	 * Flash CS6.
	 * Applies a matrix to a point.
	 * @param matrix Contains the matrix obejct applied to the point.
	 * @param point Contains the point to which the matrix is applied.
	 * @return The transformed point.
	 */
	function transformPoint(matrix:Matrix, point:JSFLPoint):JSFLPoint;
}