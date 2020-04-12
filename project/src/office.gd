extends Node2D

const OFFICE_PRICE = 1000
const OFFICE_INCOME = 500
const MAINTANCE_COST = 350

export var is_vacant: bool = true

func _ready():
	# Once placed in-world, it'll substract from your budget
	if TowerData.budget >= OFFICE_PRICE:
		TowerData.budget = -OFFICE_PRICE
		

func _process(delta):
	
	# If the office is no longer vacant, start rent timer
	if is_vacant == false:
		$Rent.start()
	else:
		$Rent.stop()

func _on_Rent_timeout():
	# On timeout, pay the player and restart timer
	TowerData.budget = OFFICE_INCOME
	$Rent.start()
