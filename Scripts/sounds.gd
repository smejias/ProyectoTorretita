extends AudioStreamPlayer

func _on_sonido_toggled(toggled_on: bool) -> void:
	if toggled_on: self.play()
	else: self.stop() 
