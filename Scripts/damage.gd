extends Area2D

func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"):
		body.position = $"../SpawnPoint".position
		AudioManager.loose_life_sfx.play()
		GlobalVariables.vida -= 1
