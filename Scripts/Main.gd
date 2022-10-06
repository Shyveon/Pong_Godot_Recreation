extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var player_score = 0
var ai_score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Ball_player_goal():
	if !$Goal.playing:
		$Goal.play()
	player_score += 1
	$HUD.update_player_score(player_score)
	pass # Replace with function body.


func _on_Ball_ai_goal():
	if !$Goal.playing:
		$Goal.play()
	ai_score += 1
	$HUD.update_ai_score(ai_score)
	pass # Replace with function body.


func _on_HUD_start_game():
	$Player.start(Vector2(10, 262))
	$Enemy.start(Vector2(848, 262))
	$Ball.start(Vector2(430.587, 262))
	$Column.start()
	pass # Replace with function body.
