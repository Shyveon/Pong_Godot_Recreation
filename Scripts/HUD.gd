extends CanvasLayer

signal start_game

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func update_player_score(score):
	$PlayerScoreLabel.text = str(score)
	
func update_ai_score(score):
	$AiScoreLabel.text = str(score)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Start_pressed():
	$Title.hide()
	$Start.hide()
	emit_signal("start_game")
	pass # Replace with function body.
