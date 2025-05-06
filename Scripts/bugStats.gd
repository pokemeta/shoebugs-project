extends Resource
class_name BugStats
var name: String
var food: int
var water: int
#var ability
var letters = "abcdefghijklmnopqrstuvwxyz"
func _init(_food, _water) -> void:
	name = str(gname(5) + " The shoebug")
	food = _food
	water = _water
func gname(length: int) -> String:
	var result = ""
	for i in range(length):
		result += letters[randi() % letters.length()]
	return result
