extends Node2D

enum IncomeFrequency { ONE_TIME, QUARTERLY }

export var room_cost: int = 10000
export var room_income: int
export var room_expense: int
export var room_capacity: int
export var is_rentable: bool
export(IncomeFrequency) var income_frequency = IncomeFrequency.QUARTERLY

var is_vacant: bool
var num_of_tenants: int
var is_full: bool

func _ready():
	
	GameData.connect("quarter_income", self, "_get_quarter_income")
	
	# Once placed in-world, it'll substract from your budget
	if GameData.budget >= room_cost:
		GameData.budget -= room_cost

func _process(delta):

	# If the office is no longer vacant, start rent timer
	if is_rentable == true:
		if num_of_tenants >= room_capacity:
			is_vacant = false
			num_of_tenants += 1
			
func _get_quarter_income():
	GameData.budget += room_income	
