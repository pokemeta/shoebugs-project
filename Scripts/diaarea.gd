extends Area2D
@export var shtuki: Array
var plr
var canint = false
func _ready() -> void:
	get_node("diastuff").shtuki = shtuki
func _on_body_entered(body) -> void:
	if body.is_in_group("plr"):
		canint = true
		plr = body
func _on_body_exited(body) -> void:
	if body.is_in_group("plr"):
#		$diastuff.hidestuff()
		canint = false
		plr = null
