package jsfl;

typedef FontItem =
{>Item,
	/**
	 * A Boolean value that specifies whether the Font item is bitmapped (true) or not (false).
	 */
	var bitmap : Bool;
	/**
	 * A Boolean value that specifies whether the Font item is bold (true) or not (false).
	 */
	var bold : Bool;
	/**
	 * A string value that allows you to specify characters to embed within a SWF file so that the characters do notneed to be present on the devices the SWF file eventually plays back on. This property provides the same functionalityas the Font Embedding dialog box.This property can also be read, allowing you to find out what characters were specified with the Font Embedding dialogbox for a given Font item.
	 */
	var embeddedCharacters : String;
	/**
	 * A string value that specifies a series of delimited integers that correspond to items that can be selected in theFont Embedding dialog box.This property can also be read, allowing you to find out what characters were specified with the Font Embedding dialogbox for a given Font item.Note: The range numbers correspond to the FontEmbedding/UnicodeTables.xml file found in the configuration folder.
	 */
	var embedRanges : String;
	/**
	 * Note: While this property is available in Flash CS5 Professional, it has no effect when applied to Text Layout Framework(TLF) text. Beginning in Flash Professional CS5, variant glyphs are always embedded in fonts used with TLF text. Theflash.text.engine (FTE) referenced below is only available in Flash Professional CS4.Property; a Boolean value that specifies whether variant glyphs should be output in the font when publishing a SWFfile (true) or not (false). Setting this value to true increases the size of your SWF file. The default value is false.Some languages dynamically substitute characters glyphs as you are typing (for example, Thai, Arabic, Hebrew, andGreek). If you are laying out or inputting text in these types of languages, set this property to true.
	 */
	var embedVariantGlyphs : Text;
	/**
	 * A string that specifies the name of the device font associated with the Font item. If you enter a string that doesnot correspond to an installed device font, an error message is displayed. To determine if a font exists on the system,use fl.isFontInstalled().Note: When you set this value, the resulting property value might be different from the string you enter. See the followingexample.
	 */
	var font : String;
	/**
	 * A Boolean value that specifies the format of the font that is output when publishing a SWF file. If this valueis true, Flash outputs a font that can be used with the flash.text.engine (FTE) APIs. If this value is false, the font canbe used with the flash.text APIs, including text fields. The default value is false.
	 */
	var isDefineFont4Symbol : Bool;
	/**
	 * A Boolean value that specifies whether the Font item is italic (true) or not (false).
	 */
	var italic : Bool;
	/**
	 * An integer that represents the size of the Font item, in points.
	 */
	var size : Int;
}