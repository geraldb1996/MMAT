
if (global.rounds == 0){show_message("No has agregado los rounds")}

else{
	if (global.minutes == 0) && (global.seconds == 0){show_message("Tiempo del round pendejo")}
	else{
		if (objCoreTimer.state == "COUNTING"){objCoreTimer.state = "PAUSE";}
			else if (objCoreTimer.state == "PAUSE"){objCoreTimer.state = "COUNTING";}
		
		if (objCoreTimer.state == "INIT"){
			objCoreTimer.state = "COUNTING"
		if instance_exists(guiMin) or instance_exists(guiSec) or instance_exists(guiRnd){
			instance_destroy(guiMin);
			instance_destroy(guiSec);
			instance_destroy(guiRnd);
			instance_destroy(btnMinus);
			instance_destroy(btnPlus);
			instance_destroy(guiRestMin);
			instance_destroy(guiRestSec);
	}}
		if(firstConfig == true){
			global.pRounds = global.rounds;
			global.pMinutes = global.minutes;
			global.pSeconds = global.seconds;
	
			global.pRestMinutes = global.restMinutes;
			global.pRestSeconds = global.restSeconds;
			audio_play_sound(sndBell,10,false);
			firstConfig = false;
	}
	}
	}