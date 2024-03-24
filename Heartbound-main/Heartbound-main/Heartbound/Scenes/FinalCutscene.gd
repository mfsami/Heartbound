extends Node2D

@onready var animation_player1 = $Hearts/Heart2/AnimationPlayer
@onready var animation_player = $Hearts/Heart/AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	animation_player1.play()
	animation_player.play()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
