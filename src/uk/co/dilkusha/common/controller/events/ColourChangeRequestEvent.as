package uk.co.dilkusha.common.controller.events
{
	import flash.events.Event;
	
	public class ColourChangeRequestEvent extends Event
	{
		public static const COLOUR_CHANGE_REQUEST:String = "colourChangeRequest";
		
		private var _colour:uint;
		
		public function get colour():uint
		{
			return _colour;
		}
		
		
		public function ColourChangeRequestEvent(type:String, colour:uint, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			_colour = colour;
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event {
			return new ColourChangeRequestEvent(type, _colour, bubbles, cancelable);
		}
	}

}