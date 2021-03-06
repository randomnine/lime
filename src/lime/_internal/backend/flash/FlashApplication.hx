package lime._internal.backend.flash;


import flash.ui.MultitouchInputMode;
import flash.ui.Multitouch;
import lime.app.Application;
import lime.media.AudioManager;
import lime.ui.Window;

@:access(lime.app.Application)


class FlashApplication {
	
	
	private var parent:Application;
	private var requestedWindow:Bool;
	
	
	public function new (parent:Application):Void {
		
		this.parent = parent;
		
		AudioManager.init ();
		
		// Initial window is already created
		parent.createWindow ({});
		
	}
	
	
	public function exec ():Int {
		
		Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
		
		return 0;
		
	}
	
	
	public function exit ():Void {
		
		
		
	}
	
	
}
