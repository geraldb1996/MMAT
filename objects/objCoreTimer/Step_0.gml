switch(state){
	case "INIT":
		//initial status for timer
		break;
	case "PAUSE":
		//pauses the counters
		break;
		
	case "COUNTING":
		stepCount += 1; //counting steps
		
		//Assign 1 second every 15 steps
		if (stepCount == 15){
			seconds -= 1;
			stepCount = 0;
			}
			
		//Formatting the seconds, minutes and rounds counters
		//Ending the round and change to REST counter
		 if (minutes == 0) && (currentRound <= rounds) && (seconds == 0){
			 currentRound += 1; seconds = 59; state = "REST";
			 restMinutes = pRestMinutes; restSeconds = pRestSeconds;}
		
		//Format the seconds and stop timers
		 if (seconds == 0) && (minutes > 0){minutes -= 1; seconds = 59;}
		 if (seconds == 0) && (minutes == 0) && (currentRound > rounds){state = "FINISH";}
		break;

	case "REST":
		stepCount += 1; //Counting steps
		
		//minus 1 second every 15 steps
		if (stepCount == 15){
			restSeconds -= 1;
			stepCount = 0;
			}
		//Stop rest timer and move to next round
		 if (restMinutes == 0) && (currentRound <= rounds) && (restSeconds == 0){
			 //Assign seconds for rest from config if its less than 1min
			if (minutes == 0) && (seconds <= 59){seconds = pSeconds;}
			state = "COUNTING";}
		//second formatting if mins left
		 if (restSeconds == 0) && (restMinutes > 0){restMinutes -= 1; restSeconds = 59;}
		 
		//Ends counter if no rounds left
		 if (currentRound > rounds){state = "FINISH";}
		break;

	case "FINISH":
		show_message("Contador finalizado by FINISH")
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
		btnCount.firstConfig = true;
		currentRound = 1;
		state = "INIT";
		break;
}