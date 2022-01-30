extends RigidBody2D
onready var vis = $VisibilityNotifier2D
var velocity = Vector2.RIGHT
export var speed = 100.0
var is_wave := false
onready var ray = $RayCast2D
onready var waveSprite = $wave
export (PackedScene) var wavicle = load("res://Objects/wavicle.tscn")


var cooldown = 0
func _ready():
	add_to_group("wavicle")
	apply_impulse(Vector2.ZERO, velocity*speed)
	if is_wave:
		$particle.set_visible(false)
		$particle_shape.disabled = true
		
	else:
		$wave.set_visible(false)
		$wave_shape.disabled = true
		

var clock :=0.0
func _physics_process(delta):
	if(cooldown > 0):
		$wave_shape.disabled = true
		$particle_shape.disabled = true
		ray.enabled = false
		cooldown-= 1
	else:
		$particle_shape.disabled = false
		$wave_shape.disabled = true
		ray.enabled = true
	var v = get_linear_velocity()
	if (v != Vector2.ZERO):
		rotation = linear_velocity.angle()
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
	if ray.is_colliding():
		if ray.get_collider().name == "SplitterArea":
			split()
		if ray.get_collider().name == "RefractGlassArea":
			refract()
		if ray.get_collider().name == "Gate":
			queue_free()
	
			
func refract():
	if is_wave:
		cooldown = 50
		var n = ray.get_collision_normal().normalized()
		var d = linear_velocity
		var r = d - 2.0*d.dot(n)*n
		linear_velocity=Vector2.ZERO
		apply_central_impulse(r.normalized() * speed)
		var new_wave = wavicle.instance()
		var p = ray.get_collision_point() - (n * 10.0)
		var theta = d.angle_to(n)
		var v = asin(1.0*sin(theta))
		new_wave.position = p
		get_tree().current_scene.call_deferred("add_child",new_wave)
		new_wave.is_wave = true
		new_wave.cooldown = 50
		new_wave.linear_velocity = Vector2.ZERO
		new_wave.apply_central_impulse(Vector2(cos(v), -sin(v)) * speed / 2)
	else:
		queue_free()


func split():
	cooldown = 50
	var n = ray.get_collision_normal().normalized()
	var d = linear_velocity
	var r = d - 2.0*d.dot(n)*n
	linear_velocity=Vector2.ZERO
	apply_central_impulse(r.normalized() * speed)
	
	if is_wave:
		var new_wave = wavicle.instance()
		var p = ray.get_collision_point() - (n * 10.0)
		var theta = d.angle_to(n)
		var v = asin(1.0*sin(theta))

		new_wave.position = p
		get_tree().current_scene.call_deferred("add_child",new_wave)
		new_wave.is_wave = true
		new_wave.cooldown = 50
		new_wave.linear_velocity = Vector2.ZERO
		new_wave.apply_central_impulse(Vector2(cos(v), -sin(v)) * speed)


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
