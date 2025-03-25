show_debug_message("Minus pressed");

switch(objSelection.pointing){
	case "ROUNDS":
		objCoreTimer.rounds -= 1;
		break;
	case "MINUTES":
		objCoreTimer.minutes -= 1;
		break;
	case "SECONDS":
		objCoreTimer.seconds -= 15;
		break;
	}