if global.paused = -1{
	if global.mechanism > 0{
		instance_create_depth(x,y,0,createBlock2)
		instance_destroy()
	}
}	