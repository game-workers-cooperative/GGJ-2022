extends Node

var story = 0
var current_stage = 0
var stages = [
	#'res://Scenes/Levels/Level 1.tscn',
	'res://Scenes/Story.tscn',
	'res://Scenes/Story.tscn',
	'res://Scenes/Story.tscn',
	'res://Scenes/Story.tscn',
	'res://Scenes/Story.tscn',
	'res://Scenes/Story.tscn',
	'res://Scenes/Story.tscn',
	'res://Scenes/Story.tscn',
	'res://Scenes/Story.tscn',
	'res://Scenes/Story.tscn',
	'res://Scenes/Story.tscn',
	'res://Scenes/Story.tscn',
	'res://Scenes/Story.tscn',
	'res://Scenes/Story.tscn',
	'res://Scenes/Credits.tscn'
]

func advance_stage():
	print('advancing to stage ', current_stage, ' ', stages[current_stage], ' out of ', stages.size())
	Global.transition(get_tree().current_scene, stages[current_stage], 1, Color.black)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

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

	print(stages[current_stage])
	if range(stages.size()).has(current_stage) \
		and stages[current_stage] == 'res://Scenes/Story.tscn' \
		and get_tree().current_scene.story.has(story):
			get_tree().current_scene.show_scene(story)
			story += 1

	current_stage += 1
