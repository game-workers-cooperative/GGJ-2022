extends Area2D

func _ready() -> void:
	pass

func _on_wavicle_entered(wavicle: Node):
	if wavicle.is_in_group("wavicle"): 
		wavicle.change_state(!wavicle.is_wave)
