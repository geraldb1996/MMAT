
	instance_create_depth(x, y,1, guiMin);
	instance_create_depth(x,y,1,guiSec);
	instance_create_depth(x,y,1,guiRnd);


	objCoreTimer.rounds = objCoreTimer.pRounds;
	objCoreTimer.minutes = objCoreTimer.pMinutes;
	objCoreTimer.seconds = objCoreTimer.pSeconds;
	objCoreTimer.restMinutes = objCoreTimer.pRestMinutes;
	objCoreTimer.restSeconds = objCoreTimer.pRestSeconds;

	firstConfig = false;
