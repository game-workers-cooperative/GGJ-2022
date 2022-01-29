extends StaticBody2D

export (PackedScene) var wave = preload("res://Objects/wavicle.tscn")
export var Destroy : String
export var split_waves : bool
onready var point = global_position

func _ready():
	pass
	
func _on_Wall_body_entered(body):
	if body.is_in_group("waves") or body.is_in_group("particles"):
		if body.is_in_group(Destroy) or Destroy == "all":
			body.queue_free()
			#return
		
	if body.is_in_group("waves") and split_waves == true:
		var spawn_point = body.global_position + body.velocity * 35
		var new_wave = wave.instance()
		get_tree().current_scene.call_deferred("add_child",new_wave)
		new_wave.global_position = spawn_point
		
		
func _integrate_forces(state): 
	state.transform[2] = point


func _on_Area2D_body_entered(body):
	
	if body.is_in_group('wave'):
		#Make "split" wave
		var spawn_point = body.global_position + ((body.velocity) * 35)

#		print(atan2(body.velocity.y, body.velocity.y))
		var new_wave = wave.instance()
		print(self.get_rotation())
		new_wave.set_rotation((atan2(body.velocity.y, body.velocity.y)) + self.get_rotation())
		#(new_wave.get_rotation())
		new_wave.is_wave = true
		get_tree().current_scene.call_deferred("add_child",new_wave)
		new_wave.global_position = spawn_point

