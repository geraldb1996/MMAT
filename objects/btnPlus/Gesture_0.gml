switch(objSelection.pointing){
	case "ROUNDS":
		global.rounds += 1;
		break;
	case "MINUTES":
		global.minutes += 1;
		break;
	case "SECONDS":
		global.seconds += 5;
		break;
	case "RESTMIN":
		global.restMinutes += 1;
		break;
	case "RESTSEC":
		global.restSeconds += 5;
		if (global.restSeconds > 59){
			global.restSeconds = 0;
			}
		break;
	}