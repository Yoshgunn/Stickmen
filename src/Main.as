package 
{
	import flash.display.Sprite;
	import flash.events.Event;

	/**
	 * ...
	 * @author Yoshgunn
	 */
	[Frame(factoryClass="Preloader")]
	public class Main extends Sprite 
	{

		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}

		private function init(e:Event = null):void 
		{
			

	removeEventListener(Event.ADDED_TO_STAGE, init);


	var redbox:Sprite = new Sprite;

	redbox.graphics.beginFill(0xFF0000, 1);

	redbox.graphics.drawRect(0, 0, 100, 100);

	addChild(redbox);

		}

	}

}