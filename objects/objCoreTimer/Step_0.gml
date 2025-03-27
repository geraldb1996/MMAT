switch(state){
	case "PAUSE":
		break;
		
	case "COUNTING":
		stepCount += 1;
		
		if (stepCount == 15){//counting 1 second every 15 step
			seconds -= 1;
			stepCount = 0;
			}
	
		 if (minutes == 0) && (rounds > 0) && (seconds == 0){rounds -= 1; seconds = 59; state = "REST";}
		 if (seconds == 0) && (minutes > 0){minutes -= 1; seconds = 59;}
		 if (seconds == 0) && (minutes == 0) && (rounds == 0){state = "PAUSE"; show_message("Contador finalizado")}
		break;

	case "REST":
		stepCount += 1;
		
		if (stepCount == 15){//counting 1 second every 15 step
			restSeconds -= 1;
			stepCount = 0;
			}
		 if (restMinutes == 0) && (rounds > 0) && (restSeconds == 0){seconds = 59; state = "COUNTING";}
		 if (restSeconds == 0) && (restMinutes > 0){restMinutes -= 1; restSeconds = 59;}
		break;
		//trabaja a como esperaba, necesita mantener los valores del rest time para reiniciar al proximo round
}

