extends VBoxContainer

func _on_CreateBtn_pressed():
	var tower_name = $NameEdit.text
	GameData.tower_name = tower_name
	
	get_tree().change_scene("res://src/world.tscn")
