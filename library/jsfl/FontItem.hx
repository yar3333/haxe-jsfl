package jsfl;

typedef FontItem =
{>Item,
	var bitmap : Bool;
	var bold : Bool;
	var embeddedCharacters : String;
	var embedRanges : String;
	var embedVariantGlyphs : Text;
	var font : String;
	var isDefineFont4Symbol : Bool;
	var italic : Bool;
	var size : Int;
}