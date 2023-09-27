extends KinematicBody2D

var vel := Vector2.ZERO
var speed := 40.0
var gravity := 12.0
export var playerNum := 1

# Declare member variables here. Examples:
# var aVar = 2
# var bVar = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	vel = _get_direction() * speed
	if playerNum == 1:
		if not is_on_floor() and not Input.get_action_strength("ui_up"):
			vel.y += gravity
	elif playerNum == 2:
		if not is_on_floor() and not Input.get_action_strength("player_two_jump"):
			vel.y += gravity
	move_and_slide(vel)
	pass


func _get_direction() -> Vector2:
	if playerNum == 1:
		return Vector2((
			Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")),
			 -Input.get_action_strength("ui_up"))
	elif playerNum == 2:
		return Vector2((
			Input.get_action_strength("player_two_right") - Input.get_action_strength("player_two_left")),
			 -Input.get_action_strength("player_two_jump"))
	else:
		return Vector2.ZERO
	

func _input(event):
	
	pass
