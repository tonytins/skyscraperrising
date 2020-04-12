extends Control


func _ready():
	$WelcomeDlg.show()
	$GPanel/GameMenus/NameLbl.text = TowerData.tower_name

func _process(delta):
	# $GPanel/GameStatus/MoneyLbl.text = str(TowerData.budget)
	pass

func _on_WelcomeDlg_confirmed():
	$WelcomeDlg.hide()
