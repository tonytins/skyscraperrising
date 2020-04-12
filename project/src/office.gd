extends Node2D

const OFFICE_PRICE = 1000
const MAINTANCE_COST = 350

func _ready():
	# Once placed in-world, it'll substract from your budget
	if TowerData.budget >= OFFICE_PRICE:
		TowerData.budget = -OFFICE_PRICE
