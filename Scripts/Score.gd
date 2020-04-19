extends Node

signal score_changed(new_score)
signal highscore_changed(new_highscore)

var current_score = 0 setget set_score
var highscore = 0 setget set_highscore
var current_hp = max(0, 3) 
func set_score(new_score):
	new_score = max(0, new_score)
	current_score = new_score
	emit_signal("score_changed", current_score)
	
	if current_score > highscore:
		highscore = new_score
		emit_signal("highscore_changed", highscore)
		
func set_highscore(_new_highscore):
	return

func _process(_delta):
	if current_hp == 0:
		current_hp = 3
		current_score = 0
		highscore = 0
		get_tree().change_scene("res://Scenes/TitleScreen.tscn")
