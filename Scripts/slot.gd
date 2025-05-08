extends Panel
@export var slot: Resource
func _ready() -> void:
	get_node("Sprite2D").texture = slot.sprite
func _on_button_button_up() -> void:
	get_parent().get_node("shopcomp").buy(slot)
