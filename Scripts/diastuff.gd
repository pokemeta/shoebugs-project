extends Node
class_name diastuff
var kaka = 0
@export var shtuki: Array
@export var ui: CanvasLayer
func _input(event: InputEvent) -> void:
	if $"..".canint:
		if event.is_action_released("interact"):
			if kaka < shtuki.size():

				showstuff(kaka)
				kaka += 1
			else:
				hidestuff()
				for i in get_parent().get_children():
					if i.is_in_group("subdiarea"):
						i.use(get_parent().plr)
func showstuff(wottosh):
	var gg = get_tree().get_current_scene().get_node("textbox")
#	get_tree().get_current_scene().add_child(gg)
	ui = gg
	ui.show()
	var g = shtuki[wottosh]
	ui.get_node("name").text = g["name"]
	ui.get_node("text").text = g["text"]
	if g["sprite"] != null:
		ui.get_node("sprite").texture = g["sprite"]
	get_parent().plr.canmove = false
	get_parent().plr.velocity = Vector2.ZERO
func hidestuff():
	ui.hide()
	ui.get_node("name").text = " "
	ui.get_node("text").text = " "
	ui.get_node("sprite").texture = null
	get_parent().plr.canmove = true
#	ui.queue_free()
	kaka = 0
	print("kakipuki")
#	get_parent().plr.stats.items.append(get_parent().loot)
