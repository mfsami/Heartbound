extends Area2D


@onready var audio_stream_player = $AudioStreamPlayer



func _on_body_entered(body):
	if body.name == "Guy":
		audio_stream_player.play()
		queue_free()
		GameManager.add_points()
 
