extends VehicleBody3D

var max_rpm = 20000
var max_hp = 1200

func _physics_process(delta):
	steering = lerp(steering, Input.get_axis("Right", "Left") * 0.2, 5 * delta)
	var acceleration = Input.get_axis("Back", "Forward")
	var rpm = abs($BackLeftWheel.get_rpm())
	$BackLeftWheel.engine_force = acceleration * max_hp * (1 - rpm/max_rpm)
	rpm = abs($BackRightWheel.get_rpm())
	$BackRightWheel.engine_force = acceleration * max_hp * (1 - rpm/max_rpm)
	
