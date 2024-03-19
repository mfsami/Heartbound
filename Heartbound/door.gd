extends Area2D


@onready var animated_sprite_2d = $AnimatedSprite2D




func _on_body_entered(body):
	if body.name == "Guy" and GameManager.points >= GameManager.required1:
		animated_sprite_2d.animation = "open"

		


func _on_body_exited(body):
	if body.name == "Guy":
		animated_sprite_2d.animation = "closed"
