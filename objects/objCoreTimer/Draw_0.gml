draw_set_font(zuume)
if (state == "COUNTING") or (state == "PAUSE"){
	draw_text_transformed(x, y,"Round: "+string(global.currentRound)+"\nMinutes: "+ string(global.minutes)+"\nSeconds: "+ string(global.seconds),1,1,0 )
	}

if (state == "REST"){
	draw_text_transformed(x, y,"Prepare for round: "+string(global.currentRound)+"\nMinutes: "+ string(global.restMinutes)+"\nSeconds: "+ string(global.restSeconds),1,1,0 )
	}