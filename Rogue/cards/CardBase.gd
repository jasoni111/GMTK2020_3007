extends MarginContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var CardImg = str("res://cards/Units/Archer.png")


# Called when the node enters the scene tree for the first time.
func _ready():
	var Cardsize = rect_size
	$Border.scale *= Cardsize/$Border.texture.get_size() 
	$Card.texture = load(CardImg)
	$Card.scale *= Cardsize/$Card.texture.get_size() 
#	$Border.scale*=Cardsize / 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
