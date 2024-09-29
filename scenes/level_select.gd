extends Control

	
func _ready():
	if Completed.lvl1completed == true:
		$x.visible = false;
	if Completed.lvl2completed == true:
		$x2.visible = false;
	if Completed.lvl3completed == true:
		$x3.visible = false;
	if Completed.lvl4completed == true:
		$x4.visible = false;
	if Completed.lvl5completed == true:
		$x5.visible = false;
	if Completed.lvl6completed == true:
		$x6.visible = false;
	if Completed.lvl7completed == true:
		$x7.visible = false;
	if Completed.lvl8completed == true:
		$x8.visible = false;
	if Completed.lvl9completed == true:
		$x9.visible = false;
	if Completed.lvl10completed == true:
		$x10.visible = false;
	if Completed.lvl11completed == true:
		$x11.visible = false;
	#pass
func _on_back_2_pressed():
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(0.1).timeout
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")




func _on_lvl_1_pressed():
	$AudioStreamPlayer2D.play()
	await get_tree().create_timer(0.1).timeout
	get_tree().change_scene_to_file("res://scenes/levels/play_level_6.tscn")


func _on_lvl_2_pressed():
	$AudioStreamPlayer2D.play()
	if Completed.lvl1completed == true:
		await get_tree().create_timer(0.1).timeout
		get_tree().change_scene_to_file("res://scenes/levels/play_level_2.tscn")


func _on_lvl_3_pressed():
	$AudioStreamPlayer2D.play()
	if Completed.lvl2completed == true:
		await get_tree().create_timer(0.1).timeout
		get_tree().change_scene_to_file("res://scenes/levels/play_level_3.tscn")


func _on_lvl_4_pressed():
	$AudioStreamPlayer2D.play()
	if Completed.lvl3completed == true:
		await get_tree().create_timer(0.1).timeout
		get_tree().change_scene_to_file("res://scenes/levels/play_level_4.tscn")


func _on_lvl_5_pressed():
	$AudioStreamPlayer2D.play()
	if Completed.lvl4completed == true:
		await get_tree().create_timer(0.1).timeout
		get_tree().change_scene_to_file("res://scenes/levels/play_level_5.tscn")


func _on_lvl_6_pressed():
	$AudioStreamPlayer2D.play()
	if Completed.lvl5completed == true:
		await get_tree().create_timer(0.1).timeout
		pass # Replace with function body.


func _on_lvl_7_pressed():
	$AudioStreamPlayer2D.play()
	if Completed.lvl6completed == true:
		await get_tree().create_timer(0.1).timeout
		pass # Replace with function body.


func _on_lvl_8_pressed():
	$AudioStreamPlayer2D.play()
	if Completed.lvl7completed == true:
		await get_tree().create_timer(0.1).timeout
		pass # Replace with function body.


func _on_lvl_9_pressed():
	$AudioStreamPlayer2D.play()
	if Completed.lvl8completed == true:
		await get_tree().create_timer(0.1).timeout
		pass # Replace with function body.


func _on_lvl_10_pressed():
	$AudioStreamPlayer2D.play()
	if Completed.lvl9completed == true:
		await get_tree().create_timer(0.1).timeout
		pass # Replace with function body.


func _on_lvl_11_pressed():
	$AudioStreamPlayer2D.play()
	if Completed.lvl10completed == true:
		await get_tree().create_timer(0.1).timeout
		pass # Replace with function body.


func _on_lvl_12_pressed():
	$AudioStreamPlayer2D.play()
	if Completed.lvl11completed == true:
		await get_tree().create_timer(0.1).timeout
		get_tree().change_scene_to_file("res://scenes/test_level.tscn")
