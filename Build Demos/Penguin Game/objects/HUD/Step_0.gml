if global.paused = -1 and (global.cameraActive = 1 or global.cameraActive = -2) and hide = -1{
	visible = true
	x = Player.x - 500
	y = Player.y - 430
	if global.cameraActive = -2 and type = 1{
		x = megamanBarrier2.x + 288
		y = megamanBarrier2.y - 160
	}
	draw_set_color(c_white)
	draw_set_font(MenuFontSmall)
	if type = 2{
		x = giantBoss.x - 500
		y = giantBoss.y - 430
	}
	if type = 3{
		x = Player.x - 500
		y = Player.y + 200
	}
}
else{
	if global.talking = 1{
		draw_set_color(c_white)
		draw_set_font(MenuFontSmall)
	}
	else{
		visible = false
		draw_set_color(c_black)
		draw_set_font(MenuFont)
	}
}
if keyboard_check_pressed(ord("H")) or gamepad_button_check_pressed(0,gp_select){
	hide = hide * -1
}