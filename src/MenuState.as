package
{
    import org.flixel.*;
 
    public class MenuState extends FlxState
    {
        private var startButton:FlxButton;
		private var serverButton:FlxButton;
		private var joinButton:FlxButton;
		private var optionsButton:FlxButton;
 
        public function MenuState()
        {
        }
 
        override public function create():void
        {
            FlxG.mouse.show();
            startButton = new FlxButton(120, 90, "Start Game", startGame);
			serverButton = new FlxButton(120, 110, "Start Server", startServer);
			joinButton = new FlxButton(120, 130, "Join Server", joinServer);
			optionsButton = new FlxButton(120, 150, "Options", options);
            add(startButton);
			add(serverButton);
			add(joinButton);
			add(optionsButton);
        }
 
        private function startGame():void
        {
            FlxG.mouse.hide();
            FlxG.switchState(new PlayState);
        }
		
		private function startServer():void 
		{
			// Player begins an online session.
		}
		
		private function joinServer():void 
		{
			// Player joins an existing server. I guess it should start
			// one if none exists yet...
		}
		
		private function options():void
        {
            FlxG.mouse.hide();
            FlxG.switchState(new OptionsMenu);
        }
    }
}