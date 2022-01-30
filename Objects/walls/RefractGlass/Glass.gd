extends RigidBody2D

var description:="glass: Reflects particles, blocks wave "
export var movable := true
export var spinable := true
func _ready():
	add_to_group("drag")


func _on_Glass_body_entered(body):
	if body.is_in_group("wavicle"):
		if body.is_wave:
			body.queue_free()
