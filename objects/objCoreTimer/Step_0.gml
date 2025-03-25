switch(state){
	case "PAUSE":
		break;
		
	case "COUNTING":
		stepCount += 1;
		if (stepCount == 15){
			seconds -= 1;
			stepCount = 0;
			}
	
		if (seconds < 0){
			minutes -= 1;
			seconds = 59;
			}
		break;
}

