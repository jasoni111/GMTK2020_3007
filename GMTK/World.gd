extends Node2D

onready var elf = $Elf
onready var knight = $Knight
onready var wizzard = $Wizzard

onready var controlable = [elf, knight, wizzard]
var controlling: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_input()->Vector2:
	var velocity = Vector2()
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	elif Input.is_action_pressed("ui_down"):
		velocity.y += 1
	elif Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	velocity = velocity.normalized()
	return velocity

func _process(delta):
	print(get_input())
	controlable[controlling].set_position(controlable[controlling].get_position()+ get_input()*16 )
#	if Input.is_action_pressed("ui_right"):
#		controlable[controlling].set_position(controlable[controlling].get_position()+ Vector2(16,0) ) 
#	pass
