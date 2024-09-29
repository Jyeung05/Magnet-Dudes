extends door


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		if playersReady == 2:
			$AudioStreamPlayer.play()
			if stage == 0:
				Completed.lvl1completed = true
				get_tree().change_scene_to_file("res://scenes/levels/play_level_2.tscn")
			if stage == 1:
				get_tree().change_scene_to_file("res://scenes/levels/play_level_3.tscn")
				Completed.lvl2completed = true
			if stage == 2:
				get_tree().change_scene_to_file("res://scenes/levels/play_level_2.tscn")
				Completed.lvl3completed = true
			if stage == 3:
				get_tree().change_scene_to_file("res://scenes/levels/play_level_1.tscn")
				Completed.lvl4completed = true
			if stage == 4:
				get_tree().change_scene_to_file("res://scenes/levels/play_level_1.tscn")
				Completed.lvl5completed = true
			if stage == 5:
				get_tree().change_scene_to_file("res://scenes/levels/play_level_1.tscn")
				Completed.lvl6completed = true
			if stage == 6:
				get_tree().change_scene_to_file("res://scenes/levels/play_level_1.tscn")
				Completed.lvl7completed = true
			if stage == 7:
				get_tree().change_scene_to_file("res://scenes/levels/play_level_1.tscn")
				Completed.lvl8completed = true
			if stage == 8:
				get_tree().change_scene_to_file("res://scenes/levels/play_level_1.tscn")
				Completed.lvl9completed = true
			if stage == 9:
				get_tree().change_scene_to_file("res://scenes/levels/play_level_1.tscn")
				Completed.lvl10completed = true
			if stage == 10:
				get_tree().change_scene_to_file("res://scenes/levels/play_level_1.tscn")
				Completed.lvl11completed = true
			if stage == 11:
				get_tree().change_scene_to_file("res://scenes/levels/play_level_1.tscn")
				Completed.lvl1completed = true
			if stage == 12:
				get_tree().change_scene_to_file("res://scenes/levels/play_level_1.tscn")
	





# Replace with function body.


func _on_area_2d_body_entered(body):

	if body == $"../player1":
		playersReady +=1; 


func _on_area_2d_body_exited(body):

	if body == $"../player1":
		playersReady -=1;
