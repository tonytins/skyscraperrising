extends Node

func _on_Quarters_timeout():
	
	if GameData.prev_quarter == 4:
		GameData.quarter = 1
		GameData.year += 1
		GameData.emit_signal("one_time_income")
		GameData.emit_signal("pay_expense")
	else:
		GameData.emit_signal("quarter_income")
		GameData.quarter += 1
	
	GameData.prev_quarter = GameData.quarter
	$Quarters.start()
