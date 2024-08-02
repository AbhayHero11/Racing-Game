extends Control


func _on_play_pressed():
	var orange_car = load("res://scenes/lambo.tscn")
	var track1 = load("res://scenes/track_1.tscn")
	
	var instance1 = orange_car.instantiate()
	var instance2 = track1.instantiate()
	
	add_child(instance1)
	add_child(instance2)
	hide()
