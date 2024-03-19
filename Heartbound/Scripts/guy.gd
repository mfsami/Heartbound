extends CharacterBody2D

var speed = 200
var jumpForce = 600
var gravity = 2500
var jumpCount = 0
var maxJump = 2
@onready var sprite_2d = $Sprite2D



func _physics_process(delta):
	var direction = Input.get_axis("Left", "Right")
	
	if direction:
		velocity.x = direction * speed
		sprite_2d.animation = "Run"
		
	else:
		velocity.x = move_toward(velocity.x, 0, 30)
		sprite_2d.animation = "idle"
		
	if direction == 1:
		sprite_2d.flip_h = false
	elif direction == -1:
		sprite_2d.flip_h = true
		
	if not is_on_floor():
		velocity.y += gravity * delta
		sprite_2d.animation = "jump"
		
	if is_on_floor():
		jumpCount = 0
		
	if Input.is_action_just_pressed("Jump") and jumpCount < maxJump:
		velocity.y -= jumpForce
		jumpCount += 1
		

	move_and_slide()
	
func _on_area_2d_area_entered(area):
	if area.is_in_group("Door1"):
		position.x = 397
		position.y = 293
		
	if area.is_in_group("Door2"):
		position.x = 820
		position.y = 324

# If spikes are touched / Reset to beginning of the level
func _on_spikes_body_entered(body):
	if body:
		position.x = Level2.resetX
		position.y = Level2.resetY
