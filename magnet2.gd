extends Sprite2D
@onready var ray_casts = [$RayCast2D, $RayCast2D2, $RayCast2D3, $RayCast2D4, $RayCast2D5 ]
@export var distance: float = 256.0

signal hooked(hooked_position)
var target;
var cast_origin; 
var is_pull = true;
var is_push = false;
var on_off = false;

func _ready():
	pass


func _process(_delta):

	if(self.on_off):
		if self.is_pull:
			print("pulling")
			magnet_pull()

func interpolate(height, duration):
	var tween_offset = get_tree().create_tween()
	var tween_rect_h = get_tree().create_tween()
	
	tween_offset.tween_property(self, "offset", Vector2(0, height/2.0), duration)
	tween_rect_h.tween_property(self, "region_rect", Rect2(0,0,16,height), duration)
	
	

func _input(event):
	if !control.player1:
		if event.is_action_pressed("mag"):
			await get_tree().create_timer(0.5).timeout
			if(self.is_pull):
				self.is_pull = false
				self.is_push = true
				$"../../../MagWave/Pull".visible = self.is_pull
				$"../../../MagWave/Push".visible = self.is_push
			elif(self.is_push):
				self.is_push = false
				self.is_pull = true
				$"../../../MagWave/Pull".visible = self.is_pull
				$"../../../MagWave/Push".visible = self.is_push
		if event.is_action_pressed("on_off"):
			self.on_off = !self.on_off
			$"../../../MagWave".visible = self.on_off
	
	
		
		
	target =  get_global_mouse_position()
	
	await get_tree().create_timer(0.5).timeout
		
		

func reverse_interpolate():
	interpolate(0,0.1)

func magnet_pull():
	await get_tree().create_timer(0.5).timeout
	var collision_point
	
	for i in range(0,5):
		if ray_casts[i].is_colliding():
			var my_pos = get_global_position()
			collision_point = ray_casts[i].get_collider()
			collision_point.pull(my_pos)
		
	#if ray_cast.self.is_colliding():
		#collision_point = ray_cast.get_collision_point()
		#
		#distance = max(50,  (global_position - collision_point).length() - 50 )
	#
		#hooked.emit(collision_point)
#
	#else:
		#distance = 256.0
	return distance
