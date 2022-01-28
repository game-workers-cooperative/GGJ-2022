extends RigidBody2D
onready var vis = $VisibilityNotifier2D
onready var anim = $AnimationPlayer
var velocity = Vector2.RIGHT
export var speed = 100.0
export var wavelength = 1.0
var index = 0.0

func _ready():
	print(index)
	visible = false
	velocity.x = cos(rotation)
	velocity.y = sin(rotation)
	apply_impulse(Vector2.ZERO, (velocity)*speed)
	anim.play("waveAnim", -1, wavelength)
	anim.advance((1.0 / wavelength) - (index * 2.5))

func _physics_process(delta):
	
	if anim.is_playing():
		visible = true
	
	if(!vis.is_on_screen()):
		print("offscreen")
		queue_free()
