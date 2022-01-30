extends GridContainer


func _ready():
	pass
func button_pressed(index):
	find_parent("Main").change_level(index)

