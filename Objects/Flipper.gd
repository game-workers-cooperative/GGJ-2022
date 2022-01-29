extends Area2D
#for grabber
export var movable:= false
export var spinable:= false
var description:="flipper: switch wavicle's state"

func _ready() -> void:
	pass

func _on_wavicle_entered(wavicle: Node):
	if wavicle.is_in_group("wavicle"): 
		wavicle.change_state(!wavicle.is_wave)
