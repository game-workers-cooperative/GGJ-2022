extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# click play button and transition to the game scene
func _on_Play_button_up():
	var target_scene = 'res://Main.tscn'
	Global.transition(get_tree().current_scene, target_scene, 1, Color.black)

func _on_Credits_button_up():
	var target_scene = 'res://Scenes/Credits.tscn'
	Global.transition(get_tree().current_scene, target_scene, 1, Color.black)
