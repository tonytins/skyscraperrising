tool
extends Node2D

enum IncomeFrequency { ONE_TIME, QUARTERLY }
enum ChooseSprite { VERSION_1, VERSION_2 }

export var room_cost: int = 10000
export var room_income: int
export var room_expense: int
export var room_capacity: int
export var is_rentable: bool

export(IncomeFrequency) var income_frequency = IncomeFrequency.QUARTERLY
export(ChooseSprite) var choose_sprite = ChooseSprite.VERSION_1

var is_paid: bool = false
var is_vacant: bool = true
var is_full: bool = false
var num_of_tenants: int = 0

func _ready():
	
	GameData.connect("quarter_income", self, "_get_quarter_income")
	GameData.connect("one_time_income", self, "_get_one_time_income")
	GameData.connect("pay_expense", self, "_get_expense")
	
	# Once placed in-world, it'll substract from your budget
	if GameData.budget >= room_cost:
		GameData.budget -= room_cost

func _process(delta):
	
	# If the office is no longer vacant, start rent timer
	if is_rentable == true:
		if num_of_tenants >= room_capacity:
			is_vacant = false
			num_of_tenants += 1
			
		match choose_sprite:
			ChooseSprite.VERSION_1:
				$RoomAnime.play("v1")
			ChooseSprite.VERSION_2:
				$RoomAnime.play("v2")

func _get_expense():
	GameData.budget -= room_expense
			
func _get_one_time_income():
	if is_paid == false:
		GameData.budget += room_income
		is_paid = true
		
func _get_quarter_income():
	GameData.budget += room_income	
