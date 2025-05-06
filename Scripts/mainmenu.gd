extends CanvasLayer

@onready var canvas_layer: CanvasLayer = $"."

func _on_play_pressed() -> void:
	canvas_layer.visible = false

func _on_settings_pressed() -> void:
	pass

func _on_exit_pressed() -> void:
	get_tree().quit()

func _input(event):
	if Input.is_action_pressed("ui_cancel"):
			canvas_layer.visible = true
