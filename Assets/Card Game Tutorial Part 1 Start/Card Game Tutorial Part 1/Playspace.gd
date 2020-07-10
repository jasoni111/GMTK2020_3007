extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const CardBase = preload("res://Cards/CardBase.tscn") # loads card template

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	if Input.is_action_just_released("leftclick"):
		var new_card = CardBase.instance()
		new_card.Cardname = 'Footman'
		new_card.rect_position = get_global_mouse_position()
		$Cards.add_child(new_card)
