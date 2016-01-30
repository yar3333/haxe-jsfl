package jsfl;

typedef Instance =
{>Element,
	/**
	 * Flash MX 2004; possible value of "video" added in Flash 8.
	 * Read-only. A string that represents the type of instance. Possible values are "symbol", "bitmap", "embeddedvideo", "linked video", "video", and "compiled clip".In Flash MX 2004, the value of instance.instanceType for an item added to the library usinglibrary.addNewItem("video") is "embedded_video". In Flash 8 and later, the value is "video". Seelibrary.addNewItem().
	 */
	var instanceType : InstanceType;
	/**
	 * Flash MX 2004
	 * A library item used to instantiate this instance. You can change this property only to another library item ofthe same type (that is, you cannot set a symbol instance to refer to a bitmap). See library object.
	 */
	var libraryItem : Item;
}

@:enum
abstract InstanceType(String) {
	var Symbol = "symbol";
	var Bitmap = "bitmap";
	var EmbeddedVideo = "embedded video";
	var LinkedVideo = "linked video";
	var Video = "video";
	var CompiledClip = "compiled clip";
}