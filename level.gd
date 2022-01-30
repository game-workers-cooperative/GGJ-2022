extends Node2D

var difficulty:=0
func goals(mode):
	difficulty +=mode
	if difficulty ==0:
		level_completed()
func level_completed():
	queue_free()
