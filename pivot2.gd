extends Node2D



func _process(delta):
	if !control.player1:
		await get_tree().create_timer(0.05).timeout
		var target = get_global_mouse_position()
		look_at(target)

func _input(event):
	pass
	#if event.is_action_pressed("mag") and pivotTimer.is_stopped():
		#var target = get_global_mouse_position()
		#var cast_origin = get_parent().position
		#
		#
		#pivotTimer.start()
		#while(!pivotTimer.is_stopped()):
			#await get_tree().create_timer(0.05).timeout
			#
			#look_at(target )
		
				
