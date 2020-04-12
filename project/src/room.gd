extends Node2D

export var room_cost: int
export var room_income: int
export var room_expense: int
export var room_capacity: int
export var is_rentable: bool

var is_vacant: bool
var num_of_tenants: int
var is_full: bool

func _ready():
	# Once placed in-world, it'll substract from your budget
	if TowerData.budget >= room_cost:
		TowerData.budget = -room_cost

func _process(delta):
	
	# If the office is no longer vacant, start rent timer
	if is_rentable == true:
		if num_of_tenants >= room_capacity:
			is_vacant = false
			num_of_tenants += 1
			$Rent.start()
		else:
			$Rent.stop()

func _on_Rent_timeout():
	# On timeout, pay the player and restart timer
	if room_income != 0:
		TowerData.budget = room_income
		$Rent.start()
