switch(objSelection.pointing){
	case "ROUNDS":
		if (global.rounds > 0){
			global.rounds -= 1;}
		break;
	case "MINUTES":
		if (global.minutes > 0){
			global.minutes -= 1;}
		break;
	case "SECONDS":
		global.seconds -= 5;
		break;
	case "RESTMIN":
		if (global.restMinutes > 0){
			global.restMinutes -= 1;}
		break;
	case "RESTSEC":
		global.restSeconds -= 5;
		break;
	}