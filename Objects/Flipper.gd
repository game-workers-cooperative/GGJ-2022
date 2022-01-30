extends Area2D
var description:="flipper: change between particles and wave"
export var movable := true
export var spinable := true
var switched_wavicles: Array = []

func _ready() -> void:
	add_to_group("drag")
	var err = self.connect("body_entered", self, "_on_wavicle_entered")
	if err != OK: printerr(err)

func _on_wavicle_entered(wavicle: Node):
	if switched_wavicles.find(wavicle.get_instance_id()) == -1 and wavicle.is_in_group("wavicle"): 
		wavicle.call_deferred("change_state")
		wavicle.set_visible(false)
	switched_wavicles.append(wavicle.get_instance_id())
	if switched_wavicles.size() > 50:
		switched_wavicles.pop_front()


func _on_Area2D_body_entered(body):
	if body.is_in_group("wavicle"):
		body.queue_free()


func _on_Flipper_body_exited(body):
	if body.is_in_group("wavicle"):
		body.set_visible(true)
