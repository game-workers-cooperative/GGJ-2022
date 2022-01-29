extends Area2D
var timer = 1000
var block = null
var drag_speed:= 100
var drag_velocity := Vector2.ZERO
var spin_dir := Vector2.ZERO
onready var cursor = $cursor
func _ready():
	pass # Replace with function body.

func _input(event):
	if Input.is_action_just_pressed("left_mouse")or Input.is_action_just_pressed("right_mouse"):
		$cursor/tutorial.visible = false
	if event is InputEventMouseMotion:
		cursor.global_position = event.global_position
		if timer <5:
			timer = -1

func _physics_process(delta):
	#show tutorial
	if timer >0:
		timer -= 1
	elif timer ==0:
		timer = -1
		$cursor/tutorial.visible = true
	#drag
	if Input.get_action_strength("left_mouse"):
		if block != null and block.get("movable"):
			drag_velocity =block.global_position.direction_to(cursor.global_position)
			drag_velocity *= delta*drag_speed
			block.global_position += drag_velocity
	#rotate
	if Input.get_action_strength("right_mouse"):
		if block != null and block.get("spinable"):
			spin_dir=block.global_position.direction_to(cursor.global_position)
			block.rotation = spin_dir.angle()

var text =""
func _body_entered(body):
	if body.is_in_group("drag"):
		block = body
		timer = 30
		$cursor/tutorial.text = block.get("description")
func _body_exited(body):
	if body.is_in_group("drag"):
		if body == block:
			$cursor/tutorial.visible = false
			block = null
