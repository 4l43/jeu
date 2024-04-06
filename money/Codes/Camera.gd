extends Camera2D

@onready var player = $"../Player"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	global_position.y = player.global_position.y#+346
	#print(global_position.y)
	#print(player.global_position)
