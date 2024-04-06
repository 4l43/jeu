extends Node2D

@onready var perdu = $Camera2D/score
@onready var player = $Player
@onready var pieces = $Pieces
@onready var max = $Camera2D/Max
@onready var nbPieces = $"Camera2D/NBpieces(debug)"
var PiecesScene = preload("res://Scennes/pieces.tscn")
var min_x = 16#483
var max_x = 165#635
var spawn = false
var nbpieces = 0
var laste_position
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if spawn == true:
		var x_position = randf_range(min_x,max_x)
	
		# Instancier le RigidBody2D à la position x aléatoire
		var rigid_body = PiecesScene.instantiate()  
		rigid_body.position.x = x_position
		rigid_body.global_position.y = player.global_position.y+200
		rigid_body.scale = Vector2(0.2, 0.2)
		pieces.add_child(rigid_body)
		#if nbpieces >= 50:
			#rigid_body.queue_free()
			#rigid_body.free()
			#remove_child(pieces)
			#nbpieces = 0
		#nbpieces= nbpieces + 1
		#print(nbpieces) 
		#nbPieces.text = str(nbpieces)
		spawn = false
		'''
	if player.global_position.y <= 10:
		perdu.text = "win"
		'''
	score()

func _on_timer_timeout():
	spawn = true
	
func score():
	var score = 0
	if score < player.global_position.y*-1:
		score = player.global_position.y*-1
	perdu.text = str(round(score))
 	
