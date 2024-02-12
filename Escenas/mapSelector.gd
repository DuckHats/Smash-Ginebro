extends GridContainer

var selected_map = null

var tempPos1 = 0

onready var selector_position = 1

var maxPos = 0

func _ready():
	for i in get_children():
		maxPos += 1
		
	selector_position = 0
		
func _input(event):

	var selector = get_parent().get_node("player1")

	if (event.is_action_pressed("ui_left2")):

		if selector_position <= 0:
			selector_position = 0
			
	if (event.is_action_pressed("ui_right2")):

		if selector_position >= maxPos - 1:
			selector_position = maxPos - 1
	
	elif (event.is_action_pressed("ui_select2")):
		selected_map = get_child(selector_position)
		emit_signal("selectedMap", selected_map)

	# Update the positions of the texture rects
	var texture_rect_1 = get_child(selector_position)
	selector.global_position = texture_rect_1.get_global_position() + texture_rect_1.rect_size / 2
