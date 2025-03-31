switch(state){
	case "INIT":
		//initial status for timer, seconds formatting
		if (global.seconds < 0){global.seconds = 59;}
		if (global.restSeconds < 0){global.restSeconds = 59;}
		if (global.seconds > 59){global.seconds = 0;}
		if (global.restSeconds > 59){global.restSeconds = 0;}
		break;
	case "PAUSE":
		//pauses the counters
		
		break;
		
	case "COUNTING":
		stepCount += 1; //counting steps
		
		//Assign 1 second every 15 steps
		if (stepCount == 15){
			global.seconds -= 1;
			stepCount = 0;
			}
			
		//Formatting the seconds, minutes and rounds counters
		//Ending the round and change to REST counter
		 if (global.minutes == 0) && (global.currentRound <= global.rounds) && (global.seconds == 0){
			 global.currentRound += 1; global.seconds = 59; state = "REST";
			 global.restMinutes = global.pRestMinutes; global.restSeconds = global.pRestSeconds;}
		
		//Format the seconds and stop timers
		 if (global.seconds == 0) && (global.minutes > 0){global.minutes -= 1; global.seconds = 59;}
		 if (global.seconds == 0) && (global.minutes == 0) && (global.currentRound > global.rounds){state = "FINISH";}
		break;

	case "REST":
		stepCount += 1; //Counting steps
		
		//minus 1 second every 15 steps
		if (stepCount == 15){
			global.restSeconds -= 1;
			stepCount = 0;
			}
		//Stop rest timer and move to next round
		 if (global.restMinutes == 0) && (global.currentRound <= global.rounds) && (global.restSeconds == 0){
			 //Assign seconds for rest from config if its less than 1min
			if (global.minutes == 0) && (global.seconds <= 59){global.seconds = global.pSeconds;}
			state = "COUNTING";}
		//second formatting if mins left
		 if (global.restSeconds == 0) && (global.restMinutes > 0){global.restMinutes -= 1; global.restSeconds = 59;}
		 
		//Ends counter if no rounds left
		 if (global.currentRound > global.rounds){state = "FINISH";}
		break;

	case "FINISH":
		show_message("FINISH")
		counterStop();
		break;
}