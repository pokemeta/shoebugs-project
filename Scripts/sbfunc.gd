extends Node
class_name sbfunc
var opened: bool = false
var ui
func use():

	var ded = get_parent().get_parent()
	var batya = get_parent()
	if not opened:
		ui = preload("res://Scenes/UI/sbinteraction.tscn").instantiate()
		get_tree().get_current_scene().add_child(ui)
		ded.ChDt.stop()
		ded.actualdir = Vector2(0,0)
		ded.velocity = Vector2(0,0)
		batya.interacter.canmove = false
		ui.shoebugtoshow = ded.stats
		opened = true
	elif opened:
		ui.queue_free()
		ded.ChDt.start(1)		
		opened = false
		batya.interacter.canmove = true
