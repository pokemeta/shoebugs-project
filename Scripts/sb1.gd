extends CharacterBody2D
@export var movements: Array[Vector2] #directions of movement for a shoe bug. I think it must be a part of a class but later
@onready var ChDt = get_node("ChangeDirectionTimer")
@export var speed: float = 0
var stats = BugStats.new(100, 100, self)
var actualdir: Vector2
@export var cost: int
func _ready() -> void:
	ChDt.start(1)
func idle() -> void:
	pass
func choosemov() -> void:
	var muvdir
	if $raycasts/RayCast2D.is_colliding():
		muvdir = movements[1]
	if $raycasts/RayCast2D2.is_colliding():
		muvdir = movements[0]
	if $raycasts/RayCast2D3.is_colliding():
		muvdir = movements[2]
	if $raycasts/RayCast2D4.is_colliding():
		muvdir = movements[3]
	else:
		muvdir = movements[randi_range(0, (movements.size()-1))]
	move(muvdir)
@warning_ignore("unused_parameter")
func move(wheretomove) -> void:
	actualdir = wheretomove

func _on_change_direction_timer_timeout() -> void:
	choosemov()

@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	if actualdir != null:
		velocity += actualdir * speed
	move_and_slide()


func _on_foodndrinktimer_timeout() -> void:
	stats.food -= 1
	stats.water -= 1
