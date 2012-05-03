package uk.co.dilkusha.shell.view
{
	import mx.events.ColorPickerEvent;
	
	import robotlegs.bender.bundles.mvcs.Mediator;
	
	import uk.co.dilkusha.common.controller.events.ColourChangeRequestEvent;
	
	public class ColourPickerMediator extends Mediator
	{

		public function ColourPickerMediator()
		{
			super();
		}
		
		override public function initialize():void {
			addViewListener(ColorPickerEvent.CHANGE, onColourChange, ColorPickerEvent);
		}
		
		private function onColourChange(event:ColorPickerEvent):void {
			dispatch(new ColourChangeRequestEvent(ColourChangeRequestEvent.COLOUR_CHANGE_REQUEST,
				event.color));
		}

	}
}