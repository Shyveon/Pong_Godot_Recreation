extends KinematicBody2D

signal player_goal
signal ai_goal

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector2(0, 0)

# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	pass # Replace with function body.
	
func _draw():
	draw_circle(Vector2(0,0), 5.0, Color.white)
	pass

func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		var collider = collision_info.collider
		collider.call('hit')
		velocity = velocity.bounce(collision_info.normal)
		velocity.x *= 1.1
		velocity.y *= 1.1

func _process(_delta):
	update()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_VisibilityNotifier2D_screen_exited():
	if (position.x <= 0):
		emit_signal("ai_goal")
		velocity = Vector2(-200, 200)
	else:
		emit_signal("player_goal")
		velocity = Vector2(200, 200)
	position = Vector2(430.587, 262)
	pass # Replace with function body.
	
func start(pos):
	position = pos
	velocity = Vector2(-200, 200)
	show()
	$CollisionShape2D.disabled = false
