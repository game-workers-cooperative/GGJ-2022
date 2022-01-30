extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func transition(from, to, duration, color):
	var rootControl = CanvasLayer.new()
	var colorRect = ColorRect.new()

	var tween = Tween.new()

	colorRect.set_frame_color(Color(0, 0, 0, 0))

	get_tree().get_root().add_child(rootControl)
	rootControl.add_child(colorRect)
	rootControl.add_child(tween)
	colorRect._set_size(Vector2(1280, 720))

	tween.interpolate_property(colorRect, "color", Color(0, 0, 0, 0), color, duration/2.0, Tween.TRANS_SINE, Tween.EASE_IN_OUT)
	tween.start()

	yield(tween, "tween_all_completed")
	var new_scene = load(to).instance()
	get_tree().get_root().add_child(new_scene)
	from.queue_free()

	tween.interpolate_property(colorRect, "color", colorRect.get_frame_color(), Color(0, 0, 0, 0), duration/2.0, Tween.TRANS_SINE, Tween.EASE_IN_OUT)
	tween.start()

	yield(tween, "tween_all_completed")

	get_tree().set_current_scene(new_scene)
	rootControl.queue_free()
