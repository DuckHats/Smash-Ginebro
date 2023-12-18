extends Control

var selected_char1 = null
var selected_char2 = null

onready var player1 = get_node("player1")
onready var player2 = get_node("player2")

onready var base = get_node("Base")

func _ready():
	
	var startingPosX1 = base.position.x
	var startingPosY1 = base.position.y
	var startingPosX2 = base.position.x + 95
	var startingPosY2 = base.position.y

	var lastPosX = startingPosX1
	var lastPosY = startingPosY1
	
	var characters = get_tree().get_nodes_in_group("character")

	for character in characters:

		character.visible = true
		character.position.x = lastPosX
		character.position.y = lastPosY
		lastPosX += 95

	player1.position.x = startingPosX1
	player1.position.y = startingPosY1
	player2.position.x = startingPosX2
	player2.position.y = startingPosY2

func _input(event):

	if (event.is_action_pressed("ui_left")):
		player1.position.x -= 95

	elif (event.is_action_pressed("ui_right")):
		player1.position.x += 95

	if (event.is_action_pressed("ui_left2")):
		player2.position.x -= 95

	elif (event.is_action_pressed("ui_right2")):
		player2.position.x += 95

func _select(event):

	var characters = get_tree().get_nodes_in_group("character")

	if (event.is_action_pressed("ui_select2")):
		for chr in characters:
			if chr.position.x == player1.position.x and chr.position.y == player1.position.y:
				chr = selected_char1
				print(characters)

	elif (event.is_action_pressed("ui_select")):
		for chr in characters:
			if chr.position.x == player2.position.x and chr.position.y == player2.position.y:
				chr = selected_char2
				print(characters)
