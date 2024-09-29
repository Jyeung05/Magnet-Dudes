extends MasterControl

var pos = Vector2(0, 0)
var direction;
var apex = false;
var dashCD = 2;
@export var speed = 500.0
@export var dashSpeedUpScalar = 5;
@export var originalJumpForce = 1000;
@export var jumpForce = 1000;
@export var magnet_power = 1000



@export var jump_height : float
@export var jump_time_to_peak : float
@export var jump_time_to_descent : float

@onready var jump_velocity : float = ((2.0 * jump_height) / jump_time_to_peak) * -1.0
@onready var jump_gravity : float = ((-2.0 * jump_height) / (jump_time_to_peak * jump_time_to_peak)) * -1.0
@onready var fall_gravity : float = ((-2.0 * jump_height) / (jump_time_to_descent * jump_time_to_descent)) * -1.0


func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	if(!player1):
		if Input.is_action_just_pressed("switch"):
			_switch()
		_walk()
	#_dash()
	
		

func _walk():

	if Input.is_action_just_pressed("up") && is_on_floor():
		_jump()
	#direction = Input.get_vector("left", "right","nothing" , "down")
	direction = Input.get_axis("left","right")
	
	velocity.x = direction * speed
	if direction> 0:  # Moving left
		$MainNode/MainSprite.flip_h = true
	elif direction < 0:  # Moving right
		$MainNode/MainSprite.flip_h = false
	move_and_slide()
	
	
func _physics_process(_delta):
	velocity.y += GRAVITY
	if control.player1:
		velocity.x = 0
		move_and_slide()



func _jump():
	velocity.y = jump_velocity
	$jumping.play()
		
	
func pull(position: Vector2):

	
	var pulled_to = (position - global_position).normalized()
	velocity = pulled_to * magnet_power
	move_and_slide()
	 
func push(posi: Vector2):
	
	var push_to = (posi - global_position).normalized() * -1
	velocity = push_to * magnet_power
	move_and_slide()
	

	
