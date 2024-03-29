package uk.co.dilkusha.module
{
	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.scopedEventDispatcher.ScopedEventDispatcherExtension;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.impl.Context;
	
	import spark.modules.Module;
	
	import uk.co.dilkusha.module.config.ColourChangingModuleConfig;
	import uk.co.dilkusha.module.view.ColourChangingRectangle;
	
	public class ColourChangingModule extends Module
	{
		
		private var _context:IContext;
		
		override protected function createChildren():void {
			super.createChildren();
			var colourChangingRectangle:ColourChangingRectangle = new ColourChangingRectangle();
			addElement(colourChangingRectangle);

		}

		public function ColourChangingModule()
		{
			super();
			// Add ScopedEventDispatcherExtension so that the module and shell have a shared
			// event dispatcher
			_context = new Context().extend(MVCSBundle)
				.extend(ScopedEventDispatcherExtension)
				.configure(ColourChangingModuleConfig, this);
			
		}
	}
}