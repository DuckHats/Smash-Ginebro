extends Control

func _on_JugarButton_button_up():
	get_tree().change_scene("res://Escenas/Mode.tscn")

func _on_ConfigButton_button_up():
	get_tree().change_scene("res://Escenas/Config.tscn")

func _on_SortirButton_button_up():
	get_tree().quit()
