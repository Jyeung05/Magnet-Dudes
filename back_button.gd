extends Control




func _on_button_pressed():
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(0.1).timeout
	get_tree().change_scene_to_file("res://scenes/level_select.tscn")