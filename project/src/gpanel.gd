extends Panel

func _process(delta):
	$GameStats/MoneyLbl.text = str(GameData.budget)
	$GameStats/YearNumLbl.text = str(GameData.year)
	$GameStats/QuaterNumLbl.text = str(GameData.quarter)
	$GameStats/NameLbl.text = GameData.tower_name
