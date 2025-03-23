switch(state){
	case "PAUSE":
		break;
		
	case "COUNTING":
		stepCount += 1;
		break;

}

if (stepCount == 15){
	seconds += 1;
	stepCount = 0;
	}
	
if (seconds == 60){
	minutes += 1;
	seconds = 0;
	}
	
