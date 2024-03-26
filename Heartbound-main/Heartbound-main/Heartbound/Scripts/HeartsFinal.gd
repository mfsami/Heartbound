extends Node

@onready var animation_player1 = $Heart1/AnimationPlayer
@onready var animation_player2 = $Heart2/AnimationPlayer
@onready var animation_player3 = $Heart3/AnimationPlayer
@onready var animation_player4 = $BigHeart1/AnimationPlayer
@onready var animation_player5 = $BigHeart2/AnimationPlayer
@onready var animation_player6 = $BigHeart3/AnimationPlayer
@onready var animation_player7 = $BigHeart4/AnimationPlayer
@onready var animation_player8 = $Restored/AnimationPlayer
@onready var animation_player9 = $Polygon2D/AnimationPlayer
@onready var audio_stream_player = $Restored/AudioStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	

	
	animation_player1.play("Up")
	animation_player2.play("Up2")
	animation_player3.play("Up3")
	

	animation_player4.play("Shake1")
	animation_player5.play("Shake2")
	animation_player6.play("Shake3")
	animation_player7.play("Shake4")
	
	restoredNoise()
	animation_player8.play("fadeIn")
	
	animation_player9.play("ToBlack")
	
func restoredNoise():
	await get_tree().create_timer(7.5).timeout
	audio_stream_player.play()
