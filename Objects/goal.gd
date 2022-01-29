extends Node2D
#for grabber
export var movable:= false
export var spinable:= true
var description:="Goal: receive wavicles"

export var switch := true
export var use_wave := false

var wait_time = 0.0
var amount :=0
func _ready():
	get_parent().call_deferred("goals",1)#parent is the level
	add_to_group("drag")
	$Sprite/full.visible = false
	$Sprite/particles.visible =bool(switch or !use_wave)
	$Sprite/wave.visible = bool(switch or use_wave)
func _physics_process(delta):
	wait_time -= delta

onready var goal_id = $Area2D/input.get_index()
func _shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.is_in_group("wavicle"):
		body.queue_free()
		if local_shape_index == goal_id:
			if switch or body.is_wave == use_wave:
				amount +=1
				if amount >100:
					done()

func done():
	$Sprite/full.visible = true
	get_parent().call_deferred("goals",-1)
