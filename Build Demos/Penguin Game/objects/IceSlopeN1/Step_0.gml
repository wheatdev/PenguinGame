if global.paused = -1{
	if image_yscale  = global.eGravity/10{
		if place_meeting(x-30, y- (global.eGravity * 2), Player){
			if global.lastPressed = 1{
				Player.y = Player.y - (6.4 * (global.eGravity/10))
				Player.x = Player.x + 6.4
			}
			if global.lastPressed = -1{
				Player.x = Player.x - 6.4
			}
			if (keyboard_check(ord("S")) or keyboard_check(vk_down)) and place_meeting(x,y,water){
				Player.x = Player.x - 10
			}
		}
	}
}