extends KinematicBody2D

var velocity = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	print("Hello Game")

func _physics_process(delta):
	"""
	if Input.is_action_pressed("ui_right"):
		velocity.x = 4
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -4 
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -4
	elif Input.is_action_pressed("ui_down"):
		velocity.y = 4 
	else:
		velocity.x = 0 
		velocity.y = 0 
	"""
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	if input_vector != Vector2.ZERO:
		velocity = input_vector
	else:
		velocity = Vector2.ZERO 

	
	move_and_collide(velocity)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
