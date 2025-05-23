extends CharacterBody2D


var speed: float  = 300.0
var canmove: bool = true
var intwith 
var invopeneed: bool = false
var ui
@onready var anim = $AnimatedSprite2D
# hud variables
@onready var inventory = $"../Inventory"
@onready var hud = $"../HUD"
@export var cheese: int
# debug variables goes here
var can_add_coins: bool = false

func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if direction:
		if direction.x == 1:
			anim.flip_h = false
		if direction.x == -1:
			anim.flip_h = true
		if canmove:
			velocity = direction * speed
			anim.play("move")
	else:
		velocity = Vector2.ZERO
		anim.play("idle")
	move_and_slide()
	
	# If 'can add coins' is true and player presses C, what will happen
	# is that it will call inventory's 'add coin' signal, the code is written
	# so that the signals can receive a value.
	if can_add_coins and Input.is_action_just_pressed("coin_add"):
		inventory.emit_signal("add_coin", 1)
	
	hud.cheese_hud.text = "Cheese: " + str(cheese)


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
