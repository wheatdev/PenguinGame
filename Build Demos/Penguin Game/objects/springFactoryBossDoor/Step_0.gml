if place_meeting(x,y,Player) and (keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up) or gamepad_button_check_pressed(0,gp_padu)){
	global.cameraActive = 0	
	global.playerStartX = 2016
	global.playerStartY = 2528
	room_goto(springFactoryBoss)
}