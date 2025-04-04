function counterStop(){
	if objCoreTimer.state != "INIT"{
		instance_create_depth(640, 640,1, guiMin);
		instance_create_depth(640,832,1,guiSec);
		instance_create_depth(640,447,1,guiRnd);
		instance_create_depth(640, 1056, 1, guiRestMin);
		instance_create_depth(640, 1232, 1, guiRestSec);
		global.rounds = global.pRounds;
		global.minutes = global.pMinutes;
		global.seconds = global.pSeconds;
		global.restMinutes = global.pRestMinutes;
		global.restSeconds = global.pRestSeconds;
		btnCount.firstConfig = true;
		global.currentRound = 1;
		objCoreTimer.state = "INIT";}
}