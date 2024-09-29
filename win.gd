extends Control






func _on_quit_pressed():
	await get_tree().create_timer(0.1).timeout
	get_tree().quit()

func _on_win_pressed():
	await get_tree().create_timer(0.1).timeout
	get_tree().change_scene_to_file("res://scenes/level_select.tscn")
