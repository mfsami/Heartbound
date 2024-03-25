extends Node

@onready var animation_player1 = $Heart1/AnimationPlayer
@onready var animation_player2 = $Heart2/AnimationPlayer
@onready var animation_player3 = $Heart3/AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	animation_player1.play("Up")
	animation_player2.play("Up2")
	animation_player3.play("Up3")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
