extends Panel

func _process(delta):
	$GameStatus/MoneyLbl.text = str(GameData.budget)
	$GameStatus/YearNumLbl.text = str(GameData.year)
	$GameStatus/PopNumLbl.text = str(GameData.population)
	$GameStatus/QuaterNumLbl.text = str(GameData.quarter)
	$GameMenus/NameBtn.text = GameData.tower_name

func _on_NameBtn_pressed():
	pass # Replace with function body.
