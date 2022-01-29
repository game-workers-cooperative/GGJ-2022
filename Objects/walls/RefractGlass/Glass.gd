extends StaticBody2D

export (PackedScene) var wave = preload("res://Objects/wavicle.tscn")
export var Destroy : String
export var split_waves : bool
onready var point = global_position

func _ready():
	pass

func _integrate_forces(state): 
	state.transform[2] = point
