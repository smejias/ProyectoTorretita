extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		GlobalVariables.score += 150
		AudioManager.collectible.play()
		await get_tree().create_timer(0.2).timeout
		queue_free()
