extends Control


func _ready():
	$GPanel/GameStatus/MoneyLbl.text = str(GameData.budget)
	$GPanel/GameStatus/YearNumLbl.text = str(GameData.year)
	$GPanel/GameStatus/QuaterNumLbl.text = str(GameData.quarter)
	$GPanel/GameMenus/NameLbl.text = GameData.tower_name
	$WelcomeDlg.show()

func _process(delta):
	$GPanel/GameStatus/MoneyLbl.text = str(GameData.budget)
	$GPanel/GameStatus/YearNumLbl.text = str(GameData.year)
	$GPanel/GameStatus/QuaterNumLbl.text = str(GameData.quarter)

func _on_WelcomeDlg_confirmed():
	$WelcomeDlg.hide()
