extends CharacterBody2D


var speed: float  = 300.0
var canmove: bool = true
var intwith 
@export var money: int
@export var cheese: int
func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if direction:
		if canmove:
			velocity = direction * speed
	else:
		velocity = Vector2.ZERO

	move_and_slide()
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("interact"):
		if intwith != null:
			intwith.intnode.use()
