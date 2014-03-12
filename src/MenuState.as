package
{
	import com.electrotank.electroserver5.api.ConnectionResponse;
	import com.electrotank.electroserver5.api.LoginRequest;
	import com.electrotank.electroserver5.api.LoginResponse;
	import com.electrotank.electroserver5.api.MessageType;
	import com.electrotank.electroserver5.ElectroServer;
	import com.electrotank.electroserver5.util.ES5TraceAdapter;
	import com.electrotank.logging.adapter.Log;
	import com.electrotank.logging.adapter.ILogger;
    import org.flixel.*;
 
    public class MenuState extends FlxState
    {
        private var startButton:FlxButton;
		private var serverButton:FlxButton;
		private var joinButton:FlxButton;
		private var optionsButton:FlxButton;
		
		// The server variable
		private var _es:ElectroServer = new ElectroServer();
		Log.setLogAdapter(new ES5TraceAdapter());
 
        public function MenuState()
        {
			_es.engine.addEventListener(MessageType.ConnectionResponse.name, onConnectionResponse);
			_es.engine.addEventListener(MessageType.LoginResponse.name, onLoginResponse);
			
			_es.loadAndConnect("settings.xml");
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
		
		
		/* * * *  SERVER THINGS  * * * */
		
		private function onConnectionResponse(e:ConnectionResponse):void
		{
			trace("Connection succeeded:" + e.successful.toString());
			
			// Log into the server if we succeeded in connecting.
			if (e.successful)
			{
				var lr:LoginRequest = new LoginRequest();
				lr.userName = "Heartman";
				
				_es.engine.send(lr);
			}
		}
		
		private function onLoginResponse(e:LoginResponse):void
		{
			trace("Logged in: " + e.successful.toString());
		}
	}
}