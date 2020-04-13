extends Node

func _on_Quarters_timeout():
	
	if GameData.prev_quarter == 4:
		GameData.quarter = 1
		GameData.year += 1
		GameEvent.emit_signal("one_time_income")
		GameEvent.emit_signal("pay_expense")
	else:
		GameEvent.emit_signal("quarter_income")
		GameData.quarter += 1
	
	GameData.prev_quarter = GameData.quarter
	$Quarters.start()
