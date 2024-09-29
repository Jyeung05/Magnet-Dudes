extends CharacterBody2D
class_name MasterControl
static var player1 = true
@export var GRAVITY = 150
@export var  push_multiplier = 2

func _ready():
	player1 = true
	GRAVITY = 150
	push_multiplier = 2
	velocity = Vector2(0,0)
	
func _process(delta):
	
	pass
	
#function to switch player boolean. async await to prevent player from switching twice instantly. 
func _switch():
	Switch.play()
	await get_tree().create_timer(0.1).timeout
	#print("switch")
	player1 = !player1





