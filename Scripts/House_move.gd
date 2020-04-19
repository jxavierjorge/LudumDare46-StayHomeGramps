extends KinematicBody2D

func get_input():
	position.x = get_global_mouse_position().x

func _physics_process(_delta):
	get_input()
