extends Panel

func _ready():
	$GameStatus/MoneyLbl.text = str(GameData.budget)
	$GameStatus/YearNumLbl.text = str(GameData.year)
	$GameStatus/QuaterNumLbl.text = str(GameData.quarter)
	$GameStatus/PopNumLbl.text = str(GameData.population)
	$GameMenus/NameBtn.text = GameData.tower_name

func _process(delta):
	$GameStatus/MoneyLbl.text = str(GameData.budget)
	$GameStatus/YearNumLbl.text = str(GameData.year)
	$GameStatus/PopNumLbl.text = str(GameData.population)
	$GameStatus/QuaterNumLbl.text = str(GameData.quarter)

func _on_NameBtn_pressed():
	pass # Replace with function body.
