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
if place_meeting(x,y,Player) and allowCollect > 40{
	global.theMoney = global.theMoney + 50
	instance_destroy()
}