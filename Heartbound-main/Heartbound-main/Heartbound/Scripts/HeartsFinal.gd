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

@onready var restoredAudio = $Restored/AudioStreamPlayer

@onready var fill1 = $BigHeart1/AudioStreamPlayer
@onready var fill2 = $BigHeart2/AudioStreamPlayer
@onready var fill3 = $BigHeart3/AudioStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready():
	
	# This is the most scuffed code of all time wtf is this im sure theres a better way
	
	animation_player1.play("Up")
	animation_player2.play("Up2")
	animation_player3.play("Up3")
	
	fillNoise1()
	animation_player4.play("Shake1")
	fillNoise2()
	animation_player5.play("Shake2")
	fillNoise3()
	animation_player6.play("Shake3")
	animation_player7.play("Shake4")
	
	restoredNoise()
	animation_player8.play("fadeIn")
	
	animation_player9.play("ToBlack")
	quitBruh()
	
func restoredNoise():
	await get_tree().create_timer(8.6).timeout
	restoredAudio.play()
	
func fillNoise1():
	await get_tree().create_timer(4.1).timeout
	fill1.play()
	
func fillNoise2():
	await get_tree().create_timer(5.2).timeout
	fill2.play()
	
func fillNoise3():
	await get_tree().create_timer(6.5).timeout
	fill3.play()
	
func quitBruh():
	await get_tree().create_timer(18).timeout
	get_tree().quit()
