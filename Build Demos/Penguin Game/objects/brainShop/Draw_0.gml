draw_sprite(textbox,0,-40,-10)
if state = 1{
	if icon = 0{
		draw_sprite(textboxiconDipp,0,-40,-10)
	}
	if icon = 1{
		draw_sprite(textboxiconWalter,0,-40,-10)
	}
}
if type = 1{
	if state = 0{
		draw_text(300,50,"Dipp, my boy! What can I get for you?")
		if selectY = 0 and selectX = -1{
			draw_text(100,150," > Talk")
		}
		else{
			draw_text(100,150,"Talk")
		}
		if global.minesUnlock < 1{
			if selectY = 1 and selectX = -1{
				draw_text(100,200," > Rumors about Abandoned Mines (150 Don)")
			}
			else{
				draw_text(100,200,"Rumors about Abandoned Mines (150 Don)")
			}
		}
		else{
			if selectY = 1 and selectX = -1{
				draw_text(100,200," > Rumors about Abandoned Mines")
			}
			else{
				draw_text(100,200,"Rumors about Abandoned Mines")
			}	
		}
		if global.storyProgress < 4{
			if selectY = 2 and selectX = -1{
				draw_text(100,250," > Rumors about Ancient Temple (300 Don)")
			}
			else{
				draw_text(100,250,"Rumors about Ancient Temple (300 Don)")
			}
		}
		else{
			if selectY = 2 and selectX = -1{
				draw_text(100,250," > Rumors about Ancient Temple")
			}
			else{
				draw_text(100,250,"Rumors about Ancient Temple")
			}
		}
		if global.SFQ < 1 or (global.minesUnlock > 2 and global.minesUnlock < 4) or global.storyProgress = 6{
			if selectY = 3 and selectX = -1{
				draw_text(100,300," > Collect Reward")
			}
			else{
				draw_text(100,300,"Collect Reward")
			}
		}
		if selectY = 0 and selectX = 1{
			draw_text(800,150," > Leave")
		}
		else{
			draw_text(800,150,"Leave")
		}
		if global.escapeRope < 1{
			if selectY = 1 and selectX = 1{
				draw_text(800,200," > Buy Escape Rope (50 Don)")
			}
			else{
				draw_text(800,200,"Buy Escape Rope (50 Don)")
			}
		}
		if global.arcade1 < 1{
			if selectY = 2 and selectX = 1{
				draw_text(800,250," > Buy Arcade Machine (200 Don)")
			}
			else{
				draw_text(800,250,"Buy Arcade Machine (200 Don)")
			}
		}
		draw_text(800,300,"Don: "+string(global.theMoney))
	}
	if state = 1{
		draw_text(400,100,words)
		draw_text(400,150,words2)
		draw_text(400,200,words3)
	}
}