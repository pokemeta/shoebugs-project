extends CanvasLayer

var shoebugtoshow: BugStats
var plr

@onready var warning_cheese_label = $Control/Panel/WarningCheese
@onready var warning_cheese_timer = $CheeseWarnTimer

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
	if plr.cheese > 0:
		plr.cheese -= 1
		shoebugtoshow.food += 5
	else:
		warning_cheese_label.visible = true
		warning_cheese_timer.start()

func givewater() -> void:
	pass # Replace with function body.


func sell() -> void:
	plr.inventory.emit_signal("add_coin", shoebugtoshow.jopa.cost)
	shoebugtoshow.jopa.get_node("interactcomp/sbfunc").ui.queue_free()
	shoebugtoshow.jopa.queue_free()
	plr.canmove = true
	
func _on_cheese_warn_timer_timeout() -> void:
	warning_cheese_label.visible = false
