extends Area2D


@onready var audio_stream_player = $AudioStreamPlayer
@onready var animation_player = $AnimationPlayer

func _ready():
	animation_player.play("Rise")
	

func _on_body_entered(body):
	if body.name == "Guy":
		queue_free()
		GameManager.add_points()
 
