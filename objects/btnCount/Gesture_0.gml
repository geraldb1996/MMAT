
if (objCoreTimer.rounds == 0){show_message("No has agregado los rounds")}

else{
	if (objCoreTimer.minutes == 0) && (objCoreTimer.seconds == 0){show_message("Tiempo del round pendejo")}
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
			objCoreTimer.pRounds = objCoreTimer.rounds;
			objCoreTimer.pMinutes = objCoreTimer.minutes;
			objCoreTimer.pSeconds = objCoreTimer.seconds;
	
			objCoreTimer.pRestMinutes = objCoreTimer.restMinutes;
			objCoreTimer.pRestSeconds = objCoreTimer.restSeconds;
			firstConfig = false;
	}
	}
	}