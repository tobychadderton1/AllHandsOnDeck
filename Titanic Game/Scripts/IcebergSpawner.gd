extends Spatial

onready var iceBerg = preload("res://Assets/Iceberg.tscn")

func _ready():
	$Timer.start()

func _process(delta):
	pass

func _on_Timer_timeout():
	var it = iceBerg.instance()
	add_child(it)
	
	$Timer.start()