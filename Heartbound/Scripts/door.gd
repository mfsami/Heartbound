extends Area2D


@onready var animated_sprite_2d = $AnimatedSprite2D
@export var target_level : PackedScene



func _on_body_entered(body):
	if body.name == "Guy" and GameManager.points >= GameManager.required1:
		animated_sprite_2d.animation = "open"
		

		
func _input(event):
	if Input.is_action_just_pressed("Enter") and GameManager.points >= GameManager.required1:
			get_tree().change_scene_to_packed(target_level)

func _on_body_exited(body):
	if body.name == "Guy":
		animated_sprite_2d.animation = "closed"
