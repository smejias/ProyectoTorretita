extends Node
@onready var timer_ui: Label = $Control/UI/Control/TimerUI
@onready var time_out: Label = $Control/UI/Control/TimeOut
@onready var timer: Timer = $Control/UI/Control/Timer

func _ready() -> void:
	GlobalVariables.vida = 3
	GlobalVariables.score = 0
	time_out.hide()
	
func _process(delta: float) -> void:
	if GlobalVariables.vida == 0:
		gameOver()
	if timer.time_left == 0:
		gameOver()

func gameOver():
	$Player.hide()
	AudioManager.game_over_sfx.play()
	await get_tree().create_timer(2.0).timeout
	get_tree().change_scene_to_file("res://Scenes/game_over.tscn")

func win():
	pass
