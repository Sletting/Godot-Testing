extends Camera2D

@export var movement_range = 200
@export var movement_threshold_percentage = 0.7

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Multiply with the maximum movement of the camera
	var movementRange = get_normalized_deadzone_mouse_vector() * movement_range
	# Set position to the difference
	position = movementRange
	pass

# Get mouse position and Divide by viewport x and y to get a value ranging from -1 to including a configurable deadzone before activation
#		-1
# 	-1	 	 1
#		 1
func get_normalized_deadzone_mouse_vector() -> Vector2:
	var mousePos: Vector2 = get_local_mouse_position()
	# Calculate x mouse position
	var width: float = get_viewport().size.x * 0.5
	if(mousePos.x > 0):
		mousePos.x = clamp(mousePos.x - width * movement_threshold_percentage, 0, width) / width
	else:
		mousePos.x = clamp(mousePos.x + width * movement_threshold_percentage, width * -1, 0) / width
	
	# Calculate y mouse position
	var height: float = get_viewport().size.y * 0.5
	if(mousePos.y > 0):
		mousePos.y = clamp(mousePos.y - height * movement_threshold_percentage, 0, height) / height
	else:
		mousePos.y = clamp(mousePos.y + height * movement_threshold_percentage, height * -1, 0) / height
	
	return mousePos
