extends RigidBody2D
onready var vis = $VisibilityNotifier2D
var velocity = Vector2.RIGHT
export var speed = 100.0
var is_wave := false

func _ready():
	apply_impulse(Vector2.ZERO, (velocity.rotated(rotation))*speed)
	if is_wave:
		$particle.set_visible(false)
		$particle_shape.disabled = true
	else:
		$wave.set_visible(false)
		$wave_shape.disabled = true
var clock :=0.0
func _physics_process(delta):
	clock += delta
	if is_wave:
		scale = Vector2.ONE*(1+sin(4*clock)*0.25)

func _screen_exited():
	queue_free()
