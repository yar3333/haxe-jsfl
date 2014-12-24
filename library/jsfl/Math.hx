package jsfl;

typedef Math =
{
	/**
	 * Performs a matrix concatenation and returns the result.
	 * @mat1 Specify the Matrix objects to be concatenated (see Matrix object). Each parameter must be an object with
	 * @mat2 Specify the Matrix objects to be concatenated (see Matrix object). Each parameter must be an object with
	 */
	function concatMatrix(mat1:Matrix, mat2:Matrix) : Matrix;
	/**
	 * Returns the inverse of the specified matrix.
	 * @mat Indicates the Matrix object to invert (see Matrix object). It must have the following fields: a, b, c, d, tx, and ty.
	 */
	function invertMatrix(mat:Matrix) : Matrix;
	/**
	 * Computes the distance between two points.
	 * @pt1 Specify the points between which distance is measured.
	 * @pt2 Specify the points between which distance is measured.
	 */
	function pointDistance(pt1:JSFLPoint, pt2:JSFLPoint) : Float;
}