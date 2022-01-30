extends Node2D
#for grabber
export var movable:= false
export var spinable:= true
var description:="Source: emits wavicles"

export var switch := true
export var is_wave := false

onready var wavicle = $ResourcePreloader.get_resource("wavicle")
var wait_time = 0.0

func _ready():
	add_to_group("drag")
	
func _physics_process(delta):
	wait_time -= delta
	if wait_time <0:
		fire(is_wave)
		if is_wave:
			wait_time = .6
		else:
			wait_time = .4
		if switch:
			is_wave = !is_wave

func fire(is_wave:=false):
	var child = wavicle.instance()
	#p.set_as_toplevel(true)
	child.velocity = Vector2.RIGHT.rotated(rotation)
	child.is_wave = is_wave
	owner.add_child(child)
	child.global_position = $Position2D.global_position
