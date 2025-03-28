switch(state){
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
		 if (minutes == 0) && (rounds > 0) && (seconds == 0){
			 rounds -= 1; seconds = 59; state = "REST";
			 restMinutes = pRestMinutes; restSeconds = pRestSeconds;}
		
		//Format the seconds and stop timers
		 if (seconds == 0) && (minutes > 0){minutes -= 1; seconds = 59;}
		 if (seconds == 0) && (minutes == 0) && (rounds == 0){state = "PAUSE"; show_message("Contador finalizado")}
		break;

	case "REST":
		stepCount += 1; //Counting steps
		
		//minus 1 second every 15 steps
		if (stepCount == 15){
			restSeconds -= 1;
			stepCount = 0;
			}
		//Stop rest timer and move to next round
		 if (restMinutes == 0) && (rounds > 0) && (restSeconds == 0){
			 //Assign seconds for rest from config if its less than 1min
			if (minutes == 0) && (seconds <= 59){seconds = pSeconds;}
			state = "COUNTING";}
		//second formatting if mins left
		 if (restSeconds == 0) && (restMinutes > 0){restMinutes -= 1; restSeconds = 59;}
		 
		//Ends counter if no rounds left
		 if (rounds == 0){state = "PAUSE"; show_message("Contador finalizado")}
		break;
}

