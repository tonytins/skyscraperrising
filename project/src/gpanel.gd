extends Panel

func _ready():
	$TwrMenus/TwrNameLbl.text = TowerData.tower_name

func _process(delta):
	$TwrMenus/MoneyLbl.text = str(TowerData.budget)
