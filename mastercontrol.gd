extends CharacterBody2D
class_name MasterControl
static var player1 = true


func _ready():
	player1 = true
	
func _process(delta):
	
	pass
	
#function to switch player boolean. async await to prevent player from switching twice instantly. 
func _switch():
	await get_tree().create_timer(0.1).timeout
	#print("switch")
	player1 = !player1





