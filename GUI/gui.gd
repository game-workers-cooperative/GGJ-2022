extends Control
onready var map = get_tree()

func ready():
	#set_as_toplevel(true)
	clear()

func _input(_event):
	if Input.get_action_strength("ui_cancel"):
		pause()

func clear():
	map.set_pause(false)
	$"main menu".visible = false
	$makers.visible = false
	$"pause menu".visible = false
	$"game over".visible = false

func makers():
	clear()
	$makers.visible = true

func start():
	clear()
	$"main menu".visible = true
	#map.set_pause(true)

func pause():
	clear()
	$"pause menu".visible = true
	map.set_pause(true)

func unpause():
	clear()
	map.set_pause(false)

func die():
	clear()
	$"game over".visible = true
	map.set_pause(true)


func new_game():
	get_tree().change_scene("res://levels/level selector.tscn")
	map.set_pause(false)
	clear()

func restart():
	map.reload_current_scene()

func quit():
	map.quit()
