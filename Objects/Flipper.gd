extends Area2D

var switched_wavicles: Array = []

func _ready() -> void:
	var err = self.connect("body_entered", self, "_on_wavicle_entered")
	if err != OK: printerr(err)

func _on_wavicle_entered(wavicle: Node):
	if switched_wavicles.find(wavicle.get_instance_id()) == -1 and wavicle.is_in_group("wavicle"): wavicle.call_deferred("change_state", !wavicle.is_wave)
	switched_wavicles.append(wavicle.get_instance_id())
	if switched_wavicles.size() > 50:
		switched_wavicles.pop_front()
