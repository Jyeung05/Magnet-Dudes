extends Control



func _on_button_pressed():
	$AudioStreamPlayer.play()
	await get_tree().create_timer(0.1).timeout
	get_tree().reload_current_scene()
