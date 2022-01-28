extends Node2D

export (PackedScene) var particle = preload("res://Objects/Particle.tscn")
export (PackedScene) var wave = preload("res://Objects/Wave.tscn")
enum STATE {particle, wave}
export var state = STATE.particle
onready var timer = $Timer
var count = 0

func _ready():
	pass

func _process(delta):
	
	if state == STATE.particle:
		timer.wait_time = 0.5
	if state == STATE.wave:
		timer.wait_time = 0.2

func _on_Timer_timeout():
	if(state == STATE.particle):
		fire_particle()
	elif(state == STATE.wave):
		fire_wave()

func fire_particle():
	var p = particle.instance()
	#p.set_as_toplevel(true)
	p.rotation = rotation
	owner.add_child(p)
	p.global_position = $Position2D.global_position

func fire_wave():

	var w = wave.instance()
	w.index = count
	#w.set_as_toplevel(true)
	w.rotation = rotation
	owner.add_child(w)
	w.global_position = $Position2D.global_position
	count += (PI / 100.0)
	if count >= TAU:
		count = 0.0
	
