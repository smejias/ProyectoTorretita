extends Area2D

@onready var damage_sound: AudioStreamPlayer = $"damange_sound"

func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"):
		damage_sound.play()
		GlobalVariables.vida -= 1
		await damage_sound.finished
		$"../Player".position = $"../SpawnPoint".position
