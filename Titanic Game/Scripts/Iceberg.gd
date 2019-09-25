extends Area

const SPEED = 3

func _ready():
	rand_seed(OS.get_time().second * OS.get_time().minute)
	translation = Vector3(rand_range(-2, 2), 0, -10)

func _physics_process(delta):
	translation += Vector3(0, 0, SPEED * 0.05)

func _on_Iceberg_body_entered(body):
	if body.name == "Titanic":
		get_tree().change_scene("res://MainLevel.tscn")

func _on_Timer_timeout():
	get_parent().remove_child(self)