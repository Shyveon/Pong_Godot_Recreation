extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	pass # Replace with function body.

func _draw():
	draw_line(Vector2(0,-262), Vector2(0,262), Color.white, 1.0)
	pass
	
func start():
	show()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
