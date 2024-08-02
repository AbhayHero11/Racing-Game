extends VehicleBody3D

var max_rpm = 8500
var max_hp = 7000

func _physics_process(delta):
	steering = lerp(steering, Input.get_axis("Right", "Left") * 0.4, 5 * delta)
	var acceleration = Input.get_axis("Back", "Forward")
	var rpm = abs($back_left_wheel.get_rpm())
	$back_left_wheel.engine_force = acceleration * max_hp * (1 - rpm/max_rpm)
	rpm = abs($back_right_wheel.get_rpm())
	$back_right_wheel.engine_force = acceleration * max_hp * (1 - rpm/max_rpm)
