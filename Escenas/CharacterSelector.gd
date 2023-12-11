extends Control

var character = []

var currentSelected1 = 0
var currentColumn1 = 0
var currentRow1 = 0

var currentSelected2 = 0
var currentColumn2 = 0
var currentRow2 = 0

export (Texture) var player1Selector
export (Texture) var player2Selector
export (int) var amountOfRows = 4
export (Vector2) var portraitOffset

onready var girdContainer = get_parent().get_model("GridContainer")

func _ready():
	
	for nameOfCharacter in get_tree().get_nodes_in_group("Iconos"):
		characters.append(nameOfCharacter)
		
	texture = player1Selector


func _process(delta):
	if(Input.is_action_just_pressed("right")):
		
		
	if(Input.is_action_just_pressed("left")):
		
	if(Input.is_action_just_pressed("D")):
		
	if(Input.is_action_just_pressed("A")):
	
