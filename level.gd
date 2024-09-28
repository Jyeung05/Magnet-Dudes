extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if control.player1 == true:
		$Player2Walls.visible = false
		$Player1Walls.visible = true
		$"../player2".visible = false
		$"../player1".visible = true
	else:
		$Player2Walls.visible = true
		$Player1Walls.visible = false
		$"../player1".visible = false
		$"../player2".visible = true
