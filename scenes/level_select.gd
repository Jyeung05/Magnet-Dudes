extends Control



func _on_back_2_pressed():
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(0.1).timeout
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")




func _on_lvl_1_pressed():
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(0.1).timeout
	get_tree().change_scene_to_file("res://scenes/levels/play_level_1.tscn")


func _on_lvl_2_pressed():
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(0.1).timeout
	get_tree().change_scene_to_file("res://scenes/levels/play_level_2.tscn")


func _on_lvl_3_pressed():
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(0.1).timeout
	pass # Replace with function body.


func _on_lvl_4_pressed():
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(0.1).timeout
	pass # Replace with function body.


func _on_lvl_5_pressed():
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(0.1).timeout
	pass # Replace with function body.


func _on_lvl_6_pressed():
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(0.1).timeout
	pass # Replace with function body.


func _on_lvl_7_pressed():
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(0.1).timeout
	pass # Replace with function body.


func _on_lvl_8_pressed():
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(0.1).timeout
	pass # Replace with function body.


func _on_lvl_9_pressed():
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(0.1).timeout
	pass # Replace with function body.


func _on_lvl_10_pressed():
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(0.1).timeout
	pass # Replace with function body.


func _on_lvl_11_pressed():
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(0.1).timeout
	pass # Replace with function body.


func _on_lvl_12_pressed():
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(0.1).timeout
	get_tree().change_scene_to_file("res://scenes/test_level.tscn")
