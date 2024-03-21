extends Node2D

@export var target_level : PackedScene

func _input(_event):
	if Input.is_anything_pressed():
		$FadeScreen.transition()
		


func _on_fade_screen_transitioned():
	get_tree().change_scene_to_packed(target_level)
