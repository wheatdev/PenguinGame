if global.paused = -1{
	if place_meeting(x,y,minecartRails) and place_meeting(x,y-(global.eGravity * 2), Player){
		if keyboard_check(ord("A")) or keyboard_check(vk_left){
			if global.playAs = 1{
				x = x - global.dippSpeed
			}
		}
		if keyboard_check(ord("D")) or keyboard_check(vk_right){
			if global.playAs = 1{
				x = x + global.dippSpeed
			}
		}
		if place_meeting(x-10,y,Ground){
			x = x + 10
		}
		if place_meeting(x+10,y,Ground){
			x = x - 10
		}
		
	}
}