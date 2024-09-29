extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$".".position.x-=1
	$".".scale.x-=0.005;
	$".".scale.y-=0.005;
	if $".".scale.x <0.3:
		$".".scale.x = 1;
		$".".scale.y = 1;
		$".".position.x = 0

