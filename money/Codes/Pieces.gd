extends RigidBody2D

var speed = 100
var value = randf_range(-1, 1)
var direction = Vector2(value,value).normalized()

func _ready():
	# Définir la gravité
	self.gravity_scale = 1.0

func _physics_process(delta):
	position += direction * speed * delta
	if global_position.y > 0:
		queue_free()
