extends RigidBody2D

func _ready():
	var veio_rand = floor(rand_range(0,19))
	$Veios.frame = veio_rand

func _on_Timer_timeout():
	queue_free()


func _on_Veio_body_entered(_body):
	if $Veios.frame < 12:
		$Pickup.play()
		Score.current_score += 1
	elif $Veios.frame == 12:
		$Pickup.play()
		Score.current_hp += 1
	else:
		$Hurt.play()
		Score.current_score -= 1
		Score.current_hp -= 1
	$AnimationPlayer.play("flash")
	print(str(Score.current_hp))
	$Timer.start()


func _on_VisibilityNotifier2D_screen_exited():
	if $Veios.frame < 3:
		$Hurt.play()
	$Timer.start()
