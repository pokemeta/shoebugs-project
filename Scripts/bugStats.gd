extends Resource
class_name BugStats
var name: String
var food: int
var water: int
#var ability
var jopa
var letters = "abcdefghijklmnopqrstuvwxyz"
func _init(_food, _water, _jopa) -> void:
	name = str(gname(5) + " The shoebug")
	food = _food
	water = _water
	jopa = _jopa # Shoebug characterbody for selling
func gname(length: int) -> String:
	var result = ""
	for i in range(length):
		result += letters[randi() % letters.length()]
	return result
