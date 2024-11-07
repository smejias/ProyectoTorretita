extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var saltos = 3
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	else:
		saltos = 3
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and saltos>0:
		saltos -= 1
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		#if !(animated_sprite.get_animation() == "Run"):
		animated_sprite.play("Run")
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		if is_on_floor():
			animated_sprite.play("Idle")
		else: 
			animated_sprite.play("Run")
			
	move_and_slide()
