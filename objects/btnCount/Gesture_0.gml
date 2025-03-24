if (objCoreTimer.state == "PAUSE"){
	objCoreTimer.state = "COUNTING";
	image_index = 1;
}
else{objCoreTimer.state = "PAUSE"; image_index = 0;}