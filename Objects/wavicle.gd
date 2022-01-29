extends RigidBody2D
onready var vis = $VisibilityNotifier2D
var velocity = Vector2.RIGHT
export var speed = 100.0
var is_wave := false

func _ready():
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
#	if is_wave:
#		scale = Vector2.ONE*(1+sin(4*clock)*0.25)

func change_state() -> void:
	is_wave = !is_wave
	
	$particle.set_visible(!is_wave)
	$particle_shape.disabled = is_wave
	$wave.set_visible(is_wave)
	$wave_shape.disabled = !is_wave
#	print(is_wave)
#	print("Is Wave:", is_wave)
#	print("Particle:", !is_wave)
#	print("Particle Shape", !is_wave)
#	print("Wave:", is_wave)
#	print("Wave Shape:", is_wave)
#	if is_wave:
#		# Disable Particle Mode
#		$particle.set_visible(false)
#		$particle_shape.disabled = true
#		# Enable Wave Mode
#		$wave.set_visible(true)
#		$wave_shape.disabled = false
#	else:
#		# Disable Particle Mode
#		$particle.set_visible(true)
#		$particle_shape.disabled = false
#		# Enable Wave Mode
#		$wave.set_visible(false)
#		$wave_shape.disabled = true
		
		# Disable Wave Mode
#		$wave.set_visible(false)
#		$wave_shape.disabled = true
		# Enable Particle Mode
#		$particle.set_visible(true)
#		$particle_shape.disabled = false

func _screen_exited():
	queue_free()
