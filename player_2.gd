extends MasterControl

var pos = Vector2(0, 0)
var direction;
var apex = false;
var dashCD = 2;
@export var speed = 500.0
@export var dashSpeedUpScalar = 5;
@export var originalJumpForce = 1000;
@export var jumpForce = 1000;
@export var magnet_power = 500
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
	direction = Input.get_vector("left", "right","nothing" , "down")
	velocity = direction * speed
	if direction.x > 0:  # Moving left
		$MainNode/MainSprite.flip_h = true
	elif direction.x < 0:  # Moving right
		$MainNode/MainSprite.flip_h = false
	_jump()
	move_and_slide()
	
	
func _physics_process(_delta):
	move_and_collide(Vector2(0, 5)) 

func _jump():
	var apex = false;
	#check if the user wants to jump
	if Input.is_action_pressed("up"):
		$jumping.play()
		#subtracts because up is negative in 2d plane
		velocity.y -= jumpForce
		jumpForce = jumpForce*0.995
	#check if the jump has reached its apex when jump force becomes 0, or if they did a short hop
	#it will consider it the apex
	if (jumpForce <= 100.0 || Input.is_action_just_released("up")):
		apex = true;

	if (apex == true):
		
		#increase the speed at which you fall to make jumping more satisfying. this can change later
		#if it feels wonky
		#this may or may not be funtionally rn, still looking into it
		velocity.y += 10000;
		jumpForce = 0
		
		#check if the user is on the floor, then apex can not be true
	if (is_on_floor()):
		apex = false;
		
		#reset jump force when you hit the ground.
	if (is_on_floor()):
		jumpForce = originalJumpForce;
		
		
	
func pull(position: Vector2):

	
	var pulled_to = (position - global_position).normalized()
	velocity = pulled_to * magnet_power
	move_and_slide()
	 
func push(posi: Vector2):
	
	var push_to = (posi - global_position).normalized() * -1
	velocity = push_to * magnet_power
	move_and_slide()

func die():
	$ded.play()
	await get_tree().create_timer(0.3).timeout
	get_tree().reload_current_scene()

func _on_area_2d_body_entered(body):
	die()
