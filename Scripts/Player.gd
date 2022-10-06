extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = 400
var screen_size
 
# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	screen_size = get_viewport_rect().size
	pass # Replace with function body.

func _draw():
	draw_line(Vector2(0, -25), Vector2(0, 25), Color.white, 10.0, false)
	pass

func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	
	position += velocity * delta
	position.y = clamp(position.y, 25, screen_size.y-25)
	
	update()
	
func hit():
	if !$Hit.playing:
		$Hit.play()
		
func start(pos):
	position = pos
	show()
	$CollisionShape2D.disabled = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
