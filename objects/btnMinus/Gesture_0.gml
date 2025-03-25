switch(objSelection.pointing){
	case "ROUNDS":
		objCoreTimer.rounds -= 1;
		break;
	case "MINUTES":
		objCoreTimer.minutes -= 1;
		break;
	case "SECONDS":
		objCoreTimer.seconds -= 5;
		break;
	case "RESTMIN":
		objCoreTimer.restMinutes -= 1;
		break;
	case "RESTSEC":
		objCoreTimer.restSeconds -= 5;
		if (objCoreTimer.restSeconds < 0){
			objCoreTimer.restSeconds = 59;
			}
		break;
	}