extends CharacterBody2D


var speed: float  = 300.0
var canmove: bool = true
var intwith 
@export var money: int
@export var cheese: int
var invopeneed: bool = false
var ui
func _physics_process(delta: float) -> void:
	#I'll get rid of those two later
	$CanvasLayer/Label.text = "money" + str(money)
	$CanvasLayer/Label2.text = "cheese" + str(cheese)
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions. Gotcha!
	var direction := Input.get_vector("move_left", "move_right", "move_up", "move_down")
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
	if Input.is_action_just_pressed("shop"):
		if not invopeneed:
			ui = preload("res://Scenes/shop.tscn").instantiate()
			get_tree().get_current_scene().add_child(ui)
			ui.plr = self
			invopeneed = true
		else:
			ui.queue_free()
			invopeneed = false
