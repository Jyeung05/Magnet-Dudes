extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	if control.player1 == true:
		$red.visible = true;
		$blue.visible = false;
	else:
		$blue.visible = true;
		$red.visible = false;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if control.player1 == true:
		$red.visible = true;
		$blue.visible = false
	else:
		$blue.visible = true;
		$red.visible = false;
