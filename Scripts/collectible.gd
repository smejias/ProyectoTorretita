extends Area2D

@onready var pickup = $Money_sound

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		GlobalVariables.score += 150
		pickup.play()
		await pickup.finished
		queue_free()
