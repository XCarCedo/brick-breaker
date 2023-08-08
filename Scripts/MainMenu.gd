extends Control

@export var game_scene: Resource 

func _on_play_button_pressed():
	get_tree().change_scene_to_packed(game_scene)

func _on_quit_button_pressed():
	get_tree().quit()
