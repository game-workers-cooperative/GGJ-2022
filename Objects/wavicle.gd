extends RigidBody2D
onready var vis = $VisibilityNotifier2D
var velocity = Vector2.RIGHT
export var speed = 100.0
var is_wave := false

func _ready():
	add_to_group("wavicle")
	apply_impulse(Vector2.ZERO, (velocity*speed))
	change_state(is_wave)

func change_state(state):
	is_wave = state
	$particle.set_visible(!is_wave)
	$particle_shape.disabled = is_wave
	$wave.set_visible(is_wave)
	$wave_shape.disabled = !is_wave

var clock :=0.0
func _physics_process(delta):
	clock += delta
	if is_wave:
		scale = Vector2.ONE*(1+sin(5*clock)*0.25)
	rotation = linear_velocity.angle()
func _screen_exited():
	queue_free()
