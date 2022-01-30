extends Node2D
onready var preloader = $ResourcePreloader
onready var lv_pool = preloader.get_resource_list()
func _ready():
	$Control.start()

func change_level(index):
	if index < lv_pool.size():
		var levels=preloader.get_children()
		if levels.size()>0:
			levels[0].queue_free()#clear old levels
		var new_level=preloader.get_resource(lv_pool[index])
		preloader.add_child(new_level.instance())
	else:
		print("level u/a")
