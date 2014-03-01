package
{
    import org.flixel.*;
 
    public class OptionsMenu extends FlxState
    {
        private var speedButton:FlxButton; 
		private var soundButton:FlxButton;
		private var graphicsButton:FlxButton;
 
        public function OptionsMenu()
        {
        }
 
        override public function create():void
        {
            FlxG.mouse.show();
            speedButton = new FlxButton(120, 90, "Speed", speed);
			soundButton = new FlxButton(120, 110, "Sound", sound);
			graphicsButton = new FlxButton(120, 130, "Graphics", graphics); 
            add(speedButton);
			add(soundButton);
			add(graphicsButton); 
        }
 
        private function speed():void
        {
            FlxG.mouse.hide();
            FlxG.switchState(new PlayState);
        }
		
		private function sound():void
        {
            FlxG.mouse.hide();
            FlxG.switchState(new PlayState);
        }
		
		private function graphics():void
        {
            FlxG.mouse.hide();
            FlxG.switchState(new PlayState);
        }
    }
}