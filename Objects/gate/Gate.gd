extends Area2D
onready var end_point = get_parent().get_node("EndPoint").global_position
var dir := Vector2.ZERO
var counter := 0
export var movable:= false
export var spinable:= false
var description:="Gate: Blocks wavicles"
export var particle_activated := false
export var wave_activated := false
func _ready():
	dir =(end_point-global_position).normalized()

func _on_PowerSource_body_entered(body):
	if body.is_in_group("wavicle"):
		if !body.is_wave and particle_activated == true: 
			counter = 10
		elif body.is_wave and wave_activated == true:
			counter = 10
		body.queue_free()

func _physics_process(delta):
	if counter >0:
		counter -=1
		global_position += dir*delta*10
func _on_Gate_body_entered(body):
	if body.is_in_group("wavicle") == true:
		body.queue_free()
