extends Label

func _ready():
# warning-ignore:return_value_discarded
	Score.connect("score_changed", self, "on_Score_score_changed")
	
func on_Score_score_changed(new_score):
	text = "Score: %s"%new_score
