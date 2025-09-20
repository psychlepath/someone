extends VehicleBody3D

@export var vehicle_power : float = 180
@export var steer_angle_radians : float = 0.5


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var move_input : float = Input.get_action_strength("reverse") - Input.get_action_strength("accelerate")
	engine_force = move_input * vehicle_power
	
	var turn_input : float = Input.get_action_strength("steer_left") - Input.get_action_strength("steer_right")
	steering = turn_input * steer_angle_radians
