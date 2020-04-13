extends MarginContainer

func _ready():
	$GPanel/GameStatus/MoneyLbl.text = str(GameData.budget)
	$GPanel/GameStatus/YearNumLbl.text = str(GameData.year)
	$GPanel/GameStatus/QuaterNumLbl.text = str(GameData.quarter)
	$GPanel/GameMenus/NameBtn.text = GameData.tower_name

func _process(delta):
	$GPanel/GameStatus/MoneyLbl.text = str(GameData.budget)
	$GPanel/GameStatus/YearNumLbl.text = str(GameData.year)
	$GPanel/GameStatus/QuaterNumLbl.text = str(GameData.quarter)

func _on_NameBtn_pressed():
	pass # Replace with function body.
