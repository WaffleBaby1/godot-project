extends CharacterBody2D

@onready var animated_sprite_2d = $AnimatedSprite2D
export var speed = 300

func _process(delta):
	if Input.is_action_pressed("shoot"):
		animated_sprite_2d.animation = "shoot"
		

func _physics_process(delta):
	var direction = Vector2()
	if Input.is_action_pressed("up"):
		direction += Vector2(0,-1)
	if Input.is_action_pressed("down"):
		direction += Vector2(0,1)
	if Input.is_action_pressed("left"):
		direction += Vector2(-1,0)
	if Input.is_action_pressed("right"):
		direction += Vector2(1,0)

	move_and_slide(direction * speed)
