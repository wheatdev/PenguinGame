if global.gumHealth > 0 and global.playAs = 2{
	x = Gum.x - (53 * global.lastPressed)
	y = Gum.y - 74
	image_xscale = .25 * global.lastPressed
	image_yscale = global.eGravity/40
	if global.allowDamage > 1{
		image_alpha = .5
	}
	else{
		image_alpha = 1
	}
	if keyboard_check_pressed(ord("A")) or keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right) or keyboard_check_pressed(vk_left){
		shootAngle = 0	
	}
	if keyboard_check(ord("W")) or keyboard_check(vk_up){
		shootAngle = 1
		if keyboard_check_released(ord("W")) or keyboard_check_released(vk_up){
			shootAngle = 0
		}
	}
	if keyboard_check(ord("S")) or keyboard_check(vk_down){
		shootAngle = 2
		if keyboard_check_released(ord("S")) or keyboard_check_released(vk_down){
			shootAngle = 0
		}
	}
	if shootAngle = 0{
		if global.lastPressed = -1{
			image_angle = -90
		}
		if global.lastPressed = 1{
			image_angle = 90
		}
	}
	if shootAngle = 1{
		image_angle = 180	
	}
	if shootAngle = 2{
		image_angle = 0	
	}
	if keyboard_check_pressed(ord("O")) or keyboard_check_pressed(ord("X")){
		if shootAngle = 0{
			instance_create_depth(x,y,0,gumShootH)
		}
		if shootAngle = 1{
			instance_create_depth(x,y,0,gumShootUp)
		}
		if shootAngle = 2{
			instance_create_depth(x,y,0,gumShootDown)
		}
	}
}
else{
	instance_destroy()
}