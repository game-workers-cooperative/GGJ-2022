extends RigidBody2D

#for grabber
export var movable:= false
export var spinable:= true
var description:="wall: block wavicles"

var wave = preload("res://Objects/wavicle.tscn")
export var destroy_wave := false
export var destroy_particles := false
export var split_waves : bool
onready var point = global_position

func _ready():
	pass
	
func _on_Wall_body_entered(body):
	if body.is_in_group("wavicle"):
		if body.is_wave == destroy_wave or body.is_wave != destroy_particles:
			body.queue_free()
		#return
		if split_waves == true and body.is_wave:
			var spawn_point = body.global_position + body.linear_velocity * 2
			var new_wave = wave.instance()
			new_wave.global_position = global_position
			new_wave.is_wave = true
			new_wave.rotation = body.rotation
			
			#call_deferred("add_child",new_wave)

func _integrate_forces(state):
	pass
