extends Control

var score = -1

func _ready():
	$Timer.start()

func _on_Timer_timeout():
	score += 1
	$ScoreLabel.text = str(score)
	
	$Timer.start()