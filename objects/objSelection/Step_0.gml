if (changing == true){
	switch(pointing){
		case "ROUNDS":
			changing = false;
			instance_create_depth(guiRnd.x - 200, guiRnd.y,1,btnMinus);
			instance_create_depth(guiRnd.x + 150, guiRnd.y,1,btnPlus);
			break;
		
		case "MINUTES":
			changing = false;
			instance_create_depth(guiMin.x - 200, guiMin.y,1,btnMinus);
			instance_create_depth(guiMin.x + 150, guiMin.y,1,btnPlus);
			break;
		
		case "SECONDS":
			changing = false;
			instance_create_depth(guiSec.x - 200, guiSec.y,1,btnMinus);
			instance_create_depth(guiSec.x + 150, guiSec.y,1,btnPlus);
			break;
		}
	}
