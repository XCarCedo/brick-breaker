extends StaticBody2D

var speed: int = 10
var velocity: Vector2 = Vector2.ZERO

func _physics_process(delta):
	if Input.get_action_strength("ui_right"):
		velocity.x += 1
	if Input.get_action_strength("ui_left"):
		velocity.x -= 1
	
	velocity.x *= speed
	position += velocity
	
	velocity.x = lerp(velocity.x, 0.0, 1)
