extends Node

func restart():
	get_tree().reload_scene()
	pass

func main_menu():
	get_tree().change_scene_to_file("res://Scenes/menu.tscn")
	pass

func play():
	get_tree().change_scene_to_file("res://Scenes/level_1.tscn")

func credits():
	get_tree().change_scene_to_file("res://Scenes/credits.tscn")

func mentions():
	get_tree().change_scene_to_file("res://Scenes/mentions.tscn")

func pause_menu_on():
	get_tree().paused = true
	$"Menu Pausa".show()
	$BotonPausa.hide()

func pause_menu_off():
	get_tree().paused = false
	$"Menu Pausa".hide()
	$BotonPausa.show()	
