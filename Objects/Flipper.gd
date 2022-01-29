extends Area2D

var switched_wavicles: Array = []

func _ready() -> void:
	var err = self.connect("body_entered", self, "_on_wavicle_entered")
	if err != OK: printerr(err)
	err = self.connect("body_exited", self, "_on_wavicle_exited")
	if err != OK: printerr(err)

func _on_wavicle_entered(wavicle: Node):
	if switched_wavicles.find(wavicle.get_instance_id()) == -1 and wavicle.is_in_group("wavicle"): wavicle.call_deferred("change_state")
	switched_wavicles.append(wavicle.get_instance_id())

func _on_wavicle_exited(wavicle: Node):
	switched_wavicles.remove(switched_wavicles.find(wavicle.get_instance_id()))
