extends Camera2D

@export var camera_attach: Marker2D;
@export var movement_range_px = 50
@export var movement_threshold = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Get mouse position
	var mousePos: Vector2 = get_global_mouse_position()
	
	# Get difference between mouse and camera_attach	
	var diff: Vector2 = camera_attach.position - mousePos
	
	# Normalize value to maximum movement range.
	print(diff)	
	
	# Set position to the difference
	
	position = camera_attach.position
	
	
	
	
	
	##position = mousePos
	#var left = limit_left + (offset.x*zoom.x) + get_viewport().size.x * zoom.x / 10
	#var right = limit_right - (offset.x*zoom.x) - get_viewport().size.x * zoom.x / 10
	#var top = limit_top + (offset.y*zoom.y) + get_viewport().size.y * zoom.y / 10 
	#var bottom = limit_bottom - (offset.y*zoom.y) - get_viewport().size.y * zoom.y / 10
#
	#position.x = clamp(mousePos.x, left, right)
	#position.y = clamp(mousePos.y, top, bottom)
	
	
	
	#print(mousePos)
	pass
