extends Area2D


@onready var audio_stream_player = $AudioStreamPlayer
@onready var animation_player = $AnimationPlayer
var collected = false

func _ready():
	animation_player.play("Rise")
	

func _on_body_entered(body):
	if body.name == "Guy" and not collected:
		collected = true
		visible = false
		audio_stream_player.play()
		GameManager.add_points()
 
