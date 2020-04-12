extends Node

var tower_name: String

var budget: int
var prev_budget: int

func starting_budget(lev: int):
	
	if lev == 3:
		budget = 5000
	elif lev == 2:
		budget = 10000
	# Default to easy mode
	else:
		budget = 20000
