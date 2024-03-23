extends Area2D

@onready var audio_stream_player = $AudioStreamPlayer
@onready var animated_sprite_2d = $AnimatedSprite2D
@export var target_level : PackedScene
var inDoor = false



func _on_body_entered(body):
	if body.name == "Guy" and GameManager.points >= GameManager.required1:
		animated_sprite_2d.animation = "open"
		inDoor = true
		

		
func _input(_event):
	if Input.is_action_just_pressed("Enter") and GameManager.points >= GameManager.required1 and inDoor:
		GameManager.points = 0
		audio_stream_player.play()
		await get_tree().create_timer(3.7).timeout
		get_tree().change_scene_to_packed(target_level)
		



func _on_body_exited(body):
	if body.name == "Guy":
		animated_sprite_2d.animation = "closed"
