extends CanvasLayer
var shoebugtoshow: BugStats
func _ready() -> void:
	$Timer.start(0.005)


func _on_timer_timeout() -> void:
	$Control/Panel/PanelContainer/VBoxContainer/Label.text = shoebugtoshow.name
	$Control/Panel/PanelContainer/VBoxContainer/FoodBar.value = shoebugtoshow.food
	$Control/Panel/PanelContainer/VBoxContainer/WaterBar.value = shoebugtoshow.water
