package uk.co.dilkusha.module.view
{
	import flash.events.IEventDispatcher;
	
	import robotlegs.bender.bundles.mvcs.Mediator;
	
	import uk.co.dilkusha.common.controller.events.ColourChangeRequestEvent;
	
	public class ColourChangingRectangleMediator extends Mediator
	{
		
		[Inject(name="global")]
		public var globalDispatcher:IEventDispatcher;
		
		[Inject]
		public var view:ColourChangingRectangle;
		
		public function ColourChangingRectangleMediator()
		{
			super();
		}
		
		override public function initialize():void {
			globalDispatcher.addEventListener(ColourChangeRequestEvent.COLOUR_CHANGE_REQUEST, onColourChangeRequested);
		}
		
		override public function destroy():void {
			globalDispatcher.removeEventListener(ColourChangeRequestEvent.COLOUR_CHANGE_REQUEST, onColourChangeRequested);
		}
		
		private function onColourChangeRequested(event:ColourChangeRequestEvent):void {
			view.fillColour = event.colour;
		}
	}

}