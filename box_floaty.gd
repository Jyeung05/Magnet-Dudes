extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var GRAVITY = 1;
var push_multiplier = 1
var magnet_power = 150
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	GRAVITY = 150
	push_multiplier = 2
	velocity = Vector2(0,0)


func _physics_process(delta):
	velocity.y += GRAVITY * 0.04
	move_and_slide()



func pull(position: Vector2):
	var pulled_to = (position - global_position).normalized()
	velocity = pulled_to * magnet_power

	move_and_slide()
	 
func push(posi: Vector2):
	
	var push_to = (posi - global_position).normalized() * -1
	velocity = push_to * magnet_power *  push_multiplier
	move_and_slide()
