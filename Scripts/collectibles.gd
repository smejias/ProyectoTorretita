extends Node


func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"):
		GlobalVariables.score += 10
