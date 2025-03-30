draw_set_font(zuume)
if (state == "COUNTING"){
	draw_text_transformed(x, y,"Rounds: "+string(currentRound)+"\nMinutes: "+ string(minutes)+"\nSeconds: "+ string(seconds),1,1,0 )
	}

if (state == "REST"){
	draw_text_transformed(x, y,"Prepare for next round"+"\nMinutes: "+ string(restMinutes)+"\nSeconds: "+ string(restSeconds),1,1,0 )
	}