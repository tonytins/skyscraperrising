extends Control


func _ready():
	$WelcomeDlg.show()
	$GPanel/TwrMenus/TwrNameLbl.text = TowerData.tower_name

func _process(delta):
	# $GPanel/TwrMenus/MoneyLbl.text = str(TowerData.budget)
	pass

func _on_WelcomeDlg_confirmed():
	$WelcomeDlg.hide()
