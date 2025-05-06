extends Area2D
var interacter: CharacterBody2D
@export var intnode: Node

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("plr"):
		body.intwith = self
		interacter = body
func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("plr"):
		body.intwith = null
		interacter = null
