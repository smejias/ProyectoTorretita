extends Label

func _process(delta: float) -> void:
	self.text = "Vidas: " + str(GlobalVariables.vida)
