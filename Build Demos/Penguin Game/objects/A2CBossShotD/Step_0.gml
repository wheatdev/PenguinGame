if global.paused = -1{
	y = y + (direct1 * 20)	
	x = x + (direct2 * 20)	
	if place_meeting(x,y,Player) and global.allowDamage = 0 {
		if global.playAs = 1{
			global.dippHealth = global.dippHealth - 3
			audio_play_sound(dippHurtSE,0,false)
		}
		global.allowDamage = 50
		global.isDamaged = 10
	}
	if place_meeting(x,y,Ground){
		instance_destroy()	
	}
}