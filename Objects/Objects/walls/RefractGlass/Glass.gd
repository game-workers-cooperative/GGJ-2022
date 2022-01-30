extends StaticBody2D

export (PackedScene) var wave = preload("res://Objects/wavicle.tscn")
export var Destroy : String
export var split_waves : bool
onready var point = global_position
var description:="glass: Reflects waves, blocks particles"
export var movable := true
export var spinable := true
func _ready():
	add_to_group("drag")

func _integrate_forces(state): 
	state.transform[2] = point
