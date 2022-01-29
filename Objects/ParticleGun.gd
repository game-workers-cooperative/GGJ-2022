extends Node2D
#for drag and drop
export var movable:= false
export var spinable:= true

onready var wavicle = $ResourcePreloader.get_resource("wavicle")
export var switch := true
export var is_wave := false
var count = 0
var wait_time = 0.0

func _ready():
	add_to_group("drag")
	
func _physics_process(delta):
	wait_time -= delta
	if wait_time <0:
		fire(is_wave)
		if is_wave:
			wait_time = 0.2
		else:
			wait_time = 0.1
		if switch:
			is_wave = !is_wave

func fire(is_wave:=false):
	var child = wavicle.instance()
	#p.set_as_toplevel(true)
	child.rotation = rotation
	child.is_wave = is_wave
	owner.add_child(child)
	child.global_position = $Position2D.global_position
