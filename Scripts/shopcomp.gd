extends Node
func buy(product):
	if product.namee == str("Cheese"):
		get_parent().plr.cheese += 1
