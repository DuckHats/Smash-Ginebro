extends Control

func _on_QPButton_button_up():
	get_tree().change_scene("res://Escenas/CharacterSelector.tscn")

func _on_StoryButton_button_up():
	get_tree().change_scene("res://Escenas/Story.tscn")
	
func _on_TournamentButton_button_up():
	get_tree().change_scene("res://Escenas/TournamentSettings.tscn")

func _on_BackButton_button_up():
	get_tree().change_scene("res://Escenas/Menu.tscn")
