extends CharacterBody2D

var speed: int = 250

func _physics_process(delta):
	if Input.get_action_strength("ui_right"):
		velocity.x += 1
	if Input.get_action_strength("ui_left"):
		velocity.x -= 1
	
	velocity.x *= speed
	move_and_slide()
	
	velocity.x = lerp(velocity.x, 0.0, 1)
