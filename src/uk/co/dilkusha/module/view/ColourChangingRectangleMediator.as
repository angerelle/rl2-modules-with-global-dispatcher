package uk.co.dilkusha.module.view
{
	import robotlegs.bender.bundles.mvcs.Mediator;
	
	import uk.co.dilkusha.common.controller.events.ColourChangeRequestEvent;
	
	public class ColourChangingRectangleMediator extends Mediator
	{
		
		[Inject]
		public var view:ColourChangingRectangle;
		
		public function ColourChangingRectangleMediator()
		{
			super();
		}
		
		override public function initialize():void {
			addContextListener(ColourChangeRequestEvent.COLOUR_CHANGE_REQUEST, onColourChangeRequested);
		}
		
		private function onColourChangeRequested(event:ColourChangeRequestEvent):void {
			view.fillColour = event.colour;
		}
	}

}