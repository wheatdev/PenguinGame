if global.paused = -1{
	if activated = 0{
		if place_meeting(x,y-(global.eGravity * 2), Player){
			activated = 1
		}
	}
	if activated = 1{
		y = y + 2
		if y > startY + 40{
			if room = mineDownUnder{
				if position = 1{
					instance_create_depth(15360,-1184,depth,mpD)
				}
				if position = 2{
					instance_create_depth(9312,2880,depth,mpU)
					instance_create_depth(9248,1152,depth,Dynamite)
				}
			}
			activated = 2
		}
	}
	if activated = 2{
		y = startY + 40	
	}
}