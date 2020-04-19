extends Node2D

const VEIO = preload("res://Scenes/Veio.tscn")



func _on_Timer_timeout():
	$Timer.wait_time = rand_range(1, 3)
	var veio = VEIO.instance()
	veio.position = $Position2D.global_position
	get_parent().add_child(veio)
	$Timer.start()
	pass # Replace with function body.
