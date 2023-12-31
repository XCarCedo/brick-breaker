extends StaticBody2D

var health_textures: Dictionary = {
	1: preload("res://Assets/Game/element_grey_rectangle.png"),
	2: preload("res://Assets/Game/element_green_rectangle.png"),
	3: preload("res://Assets/Game/element_blue_rectangle.png"),
	4: preload("res://Assets/Game/element_red_rectangle.png")
}
var health: int = 1

func _ready():
	$Sprite2D.set_texture(health_textures[health])

func hit():
	health -= 1
	if health == 0:
		queue_free()
		return
	
	$Sprite2D.set_texture(health_textures[health])
