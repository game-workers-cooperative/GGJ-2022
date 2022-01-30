extends Area2D
onready var end_point = get_parent().get_node("EndPoint").global_position
const ARRIVE_DIST = 10.0
var moving = false
export var movable:= false
export var spinable:= false
var description:="Gate: Blocks wavicles"
export var particle_activated := false
export var wave_activated := false

func _on_PowerSource_body_entered(body):
	if body.is_in_group('particle') and particle_activated == true: 
		moving = true
	elif body.is_in_group("wave") and wave_activated == true:
		moving = true
	if body.is_in_group("wavicle"): body.queue_free()

func move(delta):
	if global_position.distance_to(end_point) > ARRIVE_DIST:
		global_position = global_position.linear_interpolate(end_point,delta)
	else:
		moving = false

func _process(delta):
	if moving == true: move(delta)


func _on_Gate_body_entered(body):
	if body.is_in_group("wavicle") == true:
		body.queue_free()
