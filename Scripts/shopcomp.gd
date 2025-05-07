extends Node
func buy(product):
	if get_parent().plr.money > 0:
		get_parent().plr.money -= product.cost
		if product.namee == str("Cheese"):
			get_parent().plr.cheese += 1
		
