extends Node

func _ready() -> void:
	GlobalVariables.vida = 3
	GlobalVariables.score = 0

func _process(delta: float) -> void:
	pass

func gameOver():
	get_tree().change_scene_to_file("res://game_over.tscn")

func win():
	pass
