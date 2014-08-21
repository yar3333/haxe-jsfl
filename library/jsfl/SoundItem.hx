package jsfl;

typedef SoundItem =
{> Item,
	public var bitRate : String;
	public var bits : String;
	public var compressionType : String;
	public var convertStereoToMono : Bool;
	public var quality : String;
	public var sampleRate : String;
	public var useImportedMP3Quality : Bool;
}