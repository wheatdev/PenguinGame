if direct = 1{
	y = y - 1
	if y < startY - 30{
		direct = 2
	}
}
if direct = 2{
	y = y + 1
	if y > startY + 30{
		direct = 1
	}
}
allowCollect = allowCollect + 1
if (place_meeting(x,y,Player) and allowCollect > 50) or global.itemGet = 1{
	global.dippDynaGet = 1
	global.dippSpecial = 3
	instance_destroy()
}
