if global.paused = -1{
	if canGet > 10{
		if place_meeting(x,y,Player){
			if global.playAs = 1 and global.dippHealth > 1{
				global.dippHealth = global.dippHealth + 5
			}
			instance_destroy()
		}

		if active = 1{
			heartPump = heartPump +.02
			if heartPump > .4{
				active = 0
			}
		}
		else{
			heartPump = heartPump - .02
			if heartPump < .3{
				active = 1
			}
		}
	}
	else{
		canGet = canGet + 1
	}
}

image_xscale = heartPump
image_yscale = heartPump