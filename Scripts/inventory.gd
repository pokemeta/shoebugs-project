extends Node

# This is the inventory code, it holds coins and will hold other things in
# the future.

# These signals will help in adding and reducing coins from inventory, check
# player physics process code on how 'add coin' is being called.
# Side note: these are written in a way that they can receive a value.
signal add_coin(amount)
signal remove_coin(amount)

# The variable that will hold the coins.
@export var coins: int = 0

# Necessary to call its 'update_coin_hud' signal, check hud's code for info.
@onready var hud = $"../HUD"

# Function to add coins.
func _on_add_coin(amount: int) -> void:
	coins += amount
	# This updates the hud with the new value coins has, check hud code for info
	hud.emit_signal("update_coin_hud", coins)

# Function to remove coins.
func _on_remove_coin(amount: int) -> void:
	coins -= amount
	# This updates the hud with the new value coins has, check hud code for info
	hud.emit_signal("update_coin_hud", coins)
