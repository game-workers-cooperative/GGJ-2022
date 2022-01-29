extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_BackButton_button_up():
	var target_scene = 'res://Scenes/Title.tscn'
	Global.transition(get_tree().current_scene, target_scene, 1, Color.black)
