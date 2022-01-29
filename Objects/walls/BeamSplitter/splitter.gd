extends RigidBody2D

#for grabber
export var movable:= false
export var spinable:= true
var description:="wave splitter: 1 wave in, 2 waves out"

var wave = preload("res://Objects/wavicle.tscn")
onready var point = global_position

func _ready():
	pass

func _on_Wall_body_entered(body):
	if body.is_in_group("wavicle"):
		if body.is_wave:
			var spawn_point = body.global_position + body.linear_velocity * 2
			var new_wave = wave.instance()
			new_wave.global_position = global_position
			new_wave.is_wave = true
			new_wave.rotation = body.rotation
			#call_deferred("add_child",new_wave)
		else:
			body.queue_free()
