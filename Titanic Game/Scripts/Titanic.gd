extends KinematicBody

var Velocity = Vector3(0, 0, 0)
var standardYaw = 180
var yawAmount = 30

const MOVESPEED = .5

func _ready():
	pass

func _physics_process(delta):
	var isLeft = Input.is_action_pressed("ui_left")
	var isRight = Input.is_action_pressed("ui_right")
	if isLeft or isRight:
		if isLeft and translation.x > -2:
			Velocity.x -= MOVESPEED
			rotation_degrees.y = standardYaw + yawAmount
		elif isRight and translation.x < 2:
			Velocity.x += MOVESPEED
			rotation_degrees.y = standardYaw - yawAmount
	else:
		rotation_degrees.y = standardYaw
	
	if Input.is_action_pressed("ui_cancel"):
		get_tree().change_scene("MainMenu.tscn")
	move_and_slide(Velocity)
	Velocity.x = lerp(Velocity.x, 0, 0.2)