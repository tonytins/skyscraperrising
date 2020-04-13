extends Node2D

enum IncomeFrequency { ONE_TIME, QUARTERLY, DAILY }

export var room_cost: int = 10000
export var room_income: int
export var room_expense: int
export var room_capacity: int
export var is_rentable: bool
export(IncomeFrequency) var income_frequency = IncomeFrequency.DAILY

var rent: Timer
var is_vacant: bool
var num_of_tenants: int
var is_full: bool

func _ready():
	
	match income_frequency:
		# TODO: how long should a day be?
		IncomeFrequency.DAILY:
			rent.wait_time = 1
		IncomeFrequency.QUARTERLY:
			rent.wait_time = 5
	
	# Once placed in-world, it'll substract from your budget
	if GameData.budget >= room_cost:
		GameData.budget = -room_cost

func _process(delta):
	
	# If the office is no longer vacant, start rent timer
	if is_rentable == true:
		if num_of_tenants >= room_capacity:
			is_vacant = false
			num_of_tenants += 1
			rent.start()
		else:
			rent.stop()

	match income_frequency:
		IncomeFrequency.DAILY:
			# On timeout, pay the player and restart timer
			GameData.budget = room_income
			rent.start()
		IncomeFrequency.ONE_TIME:
			GameData.budget = room_income
