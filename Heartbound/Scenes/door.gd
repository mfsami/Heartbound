extends Sprite2D

@onready var door = $"."



func _on_area_2d_body_entered(body):
	if body.name == "Guy":
		door.animation = "open"
		
		
