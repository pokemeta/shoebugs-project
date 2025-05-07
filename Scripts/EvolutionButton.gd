extends TextureButton
class_name SkillNode
 
@onready var panel = $Panel
@onready var line_2d = $Line2D
 
func _ready():
	if get_parent() is SkillNode:
		line_2d.add_point(global_position + size/2)
		line_2d.add_point(get_parent().global_position + size/2)

func _on_pressed() -> void:
	line_2d.default_color = Color(1, 1, 0.24705882370472)
	panel.show_behind_parent = true
	print("pressed")
