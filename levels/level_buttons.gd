extends Button

export(String, FILE, "*.tscn") var target_path

func _ready():
	connect("pressed", self, "_on_Button_pressed")

func _on_Button_pressed():
	if target_path:
		get_tree().change_scene(target_path)
	else:
		printerr("No Target Scene Provided")
