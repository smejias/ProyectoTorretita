extends Label

func _process(delta: float) -> void:
	self.text = "Puntos: " + str(GlobalVariables.score)
