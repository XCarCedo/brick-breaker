extends RigidBody2D

func _on_area_2d_body_entered(body):
	if "brick" in body.get_groups():
		body.hit()
