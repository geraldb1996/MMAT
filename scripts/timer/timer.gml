function timer(){
switch(state){
	case "INIT":
		//initial status for timer, seconds formatting
		break;
	case "PAUSE":
		//pauses the counters
		
		break;
		
	case "COUNTING":
		stepCount += 1; //counting steps
		//Assign 1 second every 15 steps
		if (stepCount == 15){
			global.seconds += 1;
			stepCount = 0;
			}
		if (global.seconds > 59){global.minutes += 1; global.seconds = 0;}
		break;

	case "REST":
		break;

	case "FINISH":
		show_message("FINISH")
		counterStop();
		break;
}
}