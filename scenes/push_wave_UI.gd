extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$".".position.x+=1
	if $".".position.x == $"..".position.x:
		$".".position.x = 0
	$".".scale.x+=0.005;
	$".".scale.y+=0.005;
	if $".".scale.x >1:
		$".".scale.x = .3;
		$".".scale.y = .3;
		$".".position.x = 0

