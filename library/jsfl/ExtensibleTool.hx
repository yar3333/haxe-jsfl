package jsfl;

class ExtensibleTool
{
	function activate() : Void {}
	function configureTool() : Void {}
	function deactivate() : Void {}
	function keyDown() : Void {}
	function keyUp() : Void {}
	function mouseDoubleClick() : Void {}
	function mouseDown(pt:JSFLPoint) : Void {}
	function mouseMove(pt:JSFLPoint) : Void {}
	function mouseUp() : Void {}
	function notifySettingsChanged() : Void {}
	function setCursor() : Void {}
	function attachTool() : Void untyped
	{
		activate=$closure(this, this.activate);
		configureTool=$closure(this, this.configureTool);
		deactivate=$closure(this, this.deactivate);
		keyDown=$closure(this, this.keyDown);
		keyUp=$closure(this, this.keyUp);
		mouseDoubleClick=$closure(this, this.mouseDoubleClick);
		mouseDown=$closure(this, this.mouseDown);
		mouseMove=$closure(this, this.mouseMove);
		mouseUp=$closure(this, this.mouseUp);
		notifySettingsChanged=$closure(this, this.notifySettingsChanged);
		setCursor=$closure(this, this.setCursor);
		attachTool=$closure(this, this.attachTool);
	}
}