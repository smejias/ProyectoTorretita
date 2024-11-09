extends Node
@onready var timer_ui: Label = $TimerUI
@onready var time_out: Label = $Control/UI/Control/TimeOut

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	timer_ui.text = str(roundf($Timer.time_left))
	pass


var seconds
var minutes

func _on_timer_timeout() -> void:
	time_out.show()
	GlobalVariables.vida = 0
