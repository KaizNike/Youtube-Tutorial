extends Node

var distPlayerBasis = 16
var distOriginBasis = 100


# Take in distance
# Take in distance from center
# If too far from center die
# If too far from center and other die


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _physics_process(delta):
	var distFromOther = $Player.position - $Player2.position
	distFromOther = abs(distFromOther.x) + abs(distFromOther.y)
	var play1Dist = $Player.position - $Position2D.position
	play1Dist = abs(play1Dist.x) + abs(play1Dist.y)
	var play2Dist = $Player2.position - $Position2D.position
	play2Dist = abs(play2Dist.x) + abs(play2Dist.y)
	
#	print("DistOther: " + str(distFromOther) + " 1: " + str(play1Dist) + " 2: " + str(play2Dist))

	$CanvasLayer/GameNodeUI/HSplitContainer/ProgressBar.value = int(distFromOther) % 100
	$CanvasLayer/GameNodeUI/HSplitContainer/ProgressBar2.value = int(play2Dist) % 100
