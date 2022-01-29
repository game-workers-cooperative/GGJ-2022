extends StaticBody2D

export (PackedScene) var wave = preload("res://Objects/Wave.tscn")
onready var point = global_position
var description:="Blocks all types of signal"
export var movable := true
export var spinable := true

func _ready():
	add_to_group("drag")

func _on_Area2D_body_entered(body):
	if body.is_in_group("wavicle"):
		body.queue_free()
