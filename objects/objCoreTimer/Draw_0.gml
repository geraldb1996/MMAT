draw_set_font(zuume)
if (state == "COUNTING") or (state == "PAUSE"){
	draw_text_transformed(x, y,"Round: "+string(currentRound)+"\nMinutes: "+ string(minutes)+"\nSeconds: "+ string(seconds),1,1,0 )
	}

if (state == "REST"){
	draw_text_transformed(x, y,"Prepare for round: "+string(currentRound)+"\nMinutes: "+ string(restMinutes)+"\nSeconds: "+ string(restSeconds),1,1,0 )
	}