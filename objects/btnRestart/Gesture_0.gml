instance_create_depth(704, 640,1, guiMin);
instance_create_depth(704,832,1,guiSec);
instance_create_depth(695,447,1,guiRnd);
instance_create_depth(704, 1056, 1, guiRestMin);
instance_create_depth(704, 1232, 1, guiRestSec);


objCoreTimer.rounds = objCoreTimer.pRounds;
objCoreTimer.minutes = objCoreTimer.pMinutes;
objCoreTimer.seconds = objCoreTimer.pSeconds;
objCoreTimer.restMinutes = objCoreTimer.pRestMinutes;
objCoreTimer.restSeconds = objCoreTimer.pRestSeconds;
objCoreTimer.state = "INIT";
objCoreTimer.currentRound = 1;
btnCount.firstConfig = true;
