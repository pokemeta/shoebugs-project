extends CanvasLayer

# Signal to call for updating hud's coin counter
signal update_coin_hud(amount)

# Variable for the counter label
@onready var coin_hud = $CoinCounter

# Function for updating the counter
func _on_update_coin_hud(counter: int) -> void:
	coin_hud.text = "Coins: " + str(counter)
