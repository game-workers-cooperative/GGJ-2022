extends StaticBody2D

export (PackedScene) var wave = preload("res://Objects/Wave.tscn")
onready var point = global_position

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Area2D_body_entered(body):
	if body.is_in_group("wavicle"):
		print("a2d body entered")
		body.queue_free()
