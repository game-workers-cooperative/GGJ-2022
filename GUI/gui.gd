extends Control
onready var map = get_tree()
var pause_able = false
func ready():
	#set_as_toplevel(true)
	pass

func _input(_event):
	if Input.get_action_strength("ui_cancel"):
		if pause_able:
			pause()

func clear():
	pause_able = true
	map.set_pause(false)
	$"main menu".visible = false
	$makers.visible = false
	$"pause menu".visible = false
	$"game over".visible = false
	$"level selector".visible = false

func makers():
	clear()
	$makers.visible = true
	pause_able = false

func start():
	clear()
	$"main menu".visible = true
	pause_able = false

func pause():
	clear()
	$"pause menu".visible = true
	pause_able = false
	map.set_pause(true)

func unpause():
	clear()
	map.set_pause(false)

func die():
	clear()
	$"game over".visible = true
	map.set_pause(true)
	pause_able = false


func new_game():
	map.set_pause(false)
	clear()
	get_parent().change_level(0)
	#$"level selector".visible = true
	pause_able = false

func restart():
	map.reload_current_scene()

func quit():
	map.quit()
