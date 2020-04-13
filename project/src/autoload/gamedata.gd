extends Node

var tower_name: String = "Elecoms HQ."
var budget: int = 2000000
var year: int = 1
var prev_quarter: int
var quarter: int = 1
var population: int = 0
var news: String

enum GameSpeed { SLOW, MEDIUM, FAST }

signal quarter_income
