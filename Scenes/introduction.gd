extends Node2D
func _ready() -> void:
	$diaarea.emit_signal("body_entered", $CharacterBody2D)
	$diaarea/diastuff.showstuff(0)
	$diaarea/diastuff.kaka += 1
	$CharacterBody2D.canmove = false
	
