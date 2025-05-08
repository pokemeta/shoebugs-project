extends CanvasLayer
var shoebugtoshow: BugStats
var plr
func _ready() -> void:
	$Timer.start(0.005)
	for i in get_tree().get_current_scene().get_children():
		if i.is_in_group("plr"):
			plr = i
func _on_timer_timeout() -> void:
	$Control/Panel/PanelContainer/VBoxContainer/Label.text = shoebugtoshow.name
	$Control/Panel/PanelContainer/VBoxContainer/FoodBar.value = shoebugtoshow.food
	$Control/Panel/PanelContainer/VBoxContainer/WaterBar.value = shoebugtoshow.water


func feed() -> void:
	plr.cheese -= 1
	shoebugtoshow.food += 5

func givewater() -> void:
	pass # Replace with function body.
