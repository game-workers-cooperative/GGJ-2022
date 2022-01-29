extends RigidBody2D
onready var vis = $VisibilityNotifier2D
var velocity = Vector2.RIGHT
export var speed = 100.0
var is_wave := false

func _ready():
	set_bounce(1)
	add_to_group("wavicle")
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
		add_to_group('wave')
		if(is_in_group('particle')):
			remove_from_group('particle')
		scale = Vector2.ONE*(1+sin(4*clock)*0.25)
	else:
		add_to_group('particle')
		if(is_in_group('wave')):
			remove_from_group('wave')

func change_state(value: bool = !is_wave) -> void:
	is_wave = value
	
	$particle.set_visible(!is_wave)
	$particle_shape.disabled = is_wave
	$wave.set_visible(is_wave)
	$wave_shape.disabled = !is_wave

func _screen_exited():
	queue_free()



func _on_wavicle_body_entered(body):
	print(body)
