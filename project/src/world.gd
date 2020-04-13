extends Node

func _on_Quarters_timeout():
	
	if GameData.prev_quarter == 4:
		GameData.quarter = 1
		GameData.year += 1
	else:
		GameData.emit_signal("quarter_income")
		GameData.quarter += 1
	
	GameData.prev_quarter = GameData.quarter
	$Quarters.start()
