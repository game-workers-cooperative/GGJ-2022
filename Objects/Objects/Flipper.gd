extends Area2D
export var movable:= true
export var spinable:= false
var description := "Flipper: Toggles the state of waves and particles"
func _ready():
	add_to_group("drag")

onready var input_id = $input.get_index()
func _on_Flipper_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if  body.is_in_group("wavicle"): 
		if local_shape_index == input_id:
			body.call_deferred("change_state", !body.is_wave)
			body.visible=false
		else:
			body.queue_free()
func _on_Flipper_body_shape_exited(body_rid, body, body_shape_index, local_shape_index):
	if body != null and body.is_in_group("wavicle"):
		if local_shape_index == input_id:
			body.visible=true
		#else:
		#	body.queue_free()
