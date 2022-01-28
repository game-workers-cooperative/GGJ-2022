extends RigidBody2D
onready var vis = $VisibilityNotifier2D
var velocity = Vector2.RIGHT
export var speed = 100.0
func _ready():
	
	apply_impulse(Vector2.ZERO, (velocity)*speed)

func _physics_process(delta):
	
	#check if offscreen, delete if so. Might become deprecated later depending
	# on what we do with the camera and if we want to allow offscreen action
	
	if(!vis.is_on_screen()):
		print("offscreen")
		queue_free()
	pass
