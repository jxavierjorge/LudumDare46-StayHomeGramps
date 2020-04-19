extends Button

export(String) var scene_to_load

func _on_MenuButton_mouse_entered():
	$AudioStreamPlayer.play()
	pass # Replace with function body.
