extends Node2D

@export var target_level : PackedScene
@onready var audio_stream_player = $AudioStreamPlayer
var inputAllowed = true

func _input(_event):
	if Input.is_anything_pressed() and inputAllowed:
		audio_stream_player.play()
		$FadeScreen.transition()
		inputAllowed = false
		


func _on_fade_screen_transitioned():
	get_tree().change_scene_to_packed(target_level)
