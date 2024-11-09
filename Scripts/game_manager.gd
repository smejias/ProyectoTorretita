extends Node

@onready var game_over: AudioStreamPlayer = $GameOver

func _ready() -> void:
	GlobalVariables.vida = 3
	GlobalVariables.score = 0

func _process(delta: float) -> void:
	if GlobalVariables.vida == 0:
		gameOver()

func gameOver():
	get_tree().change_scene_to_file("res://Scenes/game_over.tscn")

func win():
	pass
