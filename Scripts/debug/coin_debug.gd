extends StaticBody2D

@onready var label_text = $Text

@onready var player = $"../CharacterBody2D"

func _on_range_area_body_entered(body: Node2D) -> void:
	print(body.name + " is on range")
	label_text.visible = true
	player.can_add_coins = true

func _on_range_area_body_exited(body: Node2D) -> void:
	print(body.name + " left range")
	label_text.visible = false
	player.can_add_coins = false
