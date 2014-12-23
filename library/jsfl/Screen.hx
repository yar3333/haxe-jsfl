package jsfl;

typedef Screen =
{
	var accName : String;
	var childScreens : Array<Screen>;
	var description : String;
	var forceSimple : Bool;
	var hidden : Bool;
	var instanceName : String;
	var name : String;
	var nextScreen : Screen;
	var parameters : Array<Parameter>;
	var parentScreen : Screen;
	var prevScreen : Screen;
	var silent : Bool;
	var tabIndex : Int;
	var timeline : Timeline;
}