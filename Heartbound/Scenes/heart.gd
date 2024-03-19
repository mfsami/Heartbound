extends Area2D




func _on_body_entered(body):
	if body.name == "Guy":
		queue_free()
		GameManager.add_points()
