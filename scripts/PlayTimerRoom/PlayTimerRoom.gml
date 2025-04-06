function PlayTimerRoom(){

		if (objCoreTimer.state == "COUNTING"){objCoreTimer.state = "PAUSE";}
			else if (objCoreTimer.state == "PAUSE"){objCoreTimer.state = "COUNTING";}
		
		if (objCoreTimer.state == "INIT"){
			objCoreTimer.state = "COUNTING"
}
		if(firstConfig == true){
			global.pRounds = global.rounds;
			global.pMinutes = global.minutes;
			global.pSeconds = global.seconds;
			audio_play_sound(sndBell,10,false);
			firstConfig = false;
	}
}