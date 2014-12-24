package jsfl;

typedef ComponentInstance =
{>SymbolInstance,
	/**
	 * Read-only. An array of ActionScript 2.0 properties that are accessible from the component Propertyinspector. See Parameter object.
	 */
	var parameters : Array<Parameter>;
}