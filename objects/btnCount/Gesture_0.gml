if (objCoreTimer.state == "PAUSE"){
	objCoreTimer.state = "COUNTING";
	image_index = 1;
}
else{objCoreTimer.state = "PAUSE"; image_index = 0;}

if instance_exists(guiMin) or instance_exists(guiSec) or instance_exists(guiRnd){
	instance_destroy(guiMin);
	instance_destroy(guiSec);
	instance_destroy(guiRnd);
	instance_destroy(btnMinus);
	instance_destroy(btnPlus);
	}
else{
	instance_create_depth(x, y,1, guiMin);
	instance_create_depth(x,y,1,guiSec);
	instance_create_depth(x,y,1,guiRnd);
	}

if(firstConfig == true){
	objCoreTimer.pRounds = objCoreTimer.rounds;
	objCoreTimer.pMinutes = objCoreTimer.minutes;
	objCoreTimer.pSeconds = objCoreTimer.seconds;
	objCoreTimer.pRestMinutes = objCoreTimer.restMinutes;
	objCoreTimer.pRestSeconds = objCoreTimer.restSeconds;
	firstConfig = false;
	}