extends Node
func buy(product):
	if get_parent().plr.inventory.coins > 0:
		get_parent().plr.inventory.emit_signal("remove_coin", product.cost)
		if product.namee == str("Cheese"):
			get_parent().plr.cheese += 1
		
