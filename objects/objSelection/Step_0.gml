if (changing == true){
	switch(pointing){
		case "ROUNDS":
			changing = false;
			instance_create_depth(guiRnd.x - 432, guiRnd.y+80,1,btnMinus);
			instance_create_depth(guiRnd.x + 256, guiRnd.y+80,1,btnPlus);
			break;
		
		case "MINUTES":
			changing = false;
			instance_create_depth(guiMin.x - 432, guiMin.y+80,1,btnMinus);
			instance_create_depth(guiMin.x + 256, guiMin.y+80,1,btnPlus);
			break;
		
		case "SECONDS":
			changing = false;
			instance_create_depth(guiSec.x - 432, guiSec.y+80,1,btnMinus);
			instance_create_depth(guiSec.x + 256, guiSec.y+80,1,btnPlus);
			break;
		case "RESTMIN":
			changing = false;
			instance_create_depth(guiRestMin.x - 432, guiRestMin.y+80,1,btnMinus);
			instance_create_depth(guiRestMin.x + 256, guiRestMin.y+80,1,btnPlus);
			break;
		case "RESTSEC":
			changing = false;
			instance_create_depth(guiRestSec.x - 432, guiRestSec.y+80,1,btnMinus);
			instance_create_depth(guiRestSec.x + 256, guiRestSec.y+80,1,btnPlus);
			break;
		}
	}
