extends Node2D

func _on_area_2d_body_entered(body):
	if "ball" in body.get_groups():
		get_tree().change_scene_to_file("res://Scenes/GameOver.tscn")
	
