extends StaticBody2D

@onready var player = $"../Player"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#marche pas
	if global_position.y > player.global_position.y:
		global_position.y = player.global_position.y
