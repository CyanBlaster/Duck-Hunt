extends Node
var points = 0
var ducks = 0
var timer = 10
var break_timer = 0
var Round = true
func _ready() -> void:
	pass
func _process(delta: float) -> void:
	if(Round):
		timer -= delta
		if(timer <= 0):
			print("sd")
			break_timer = 3
			Round = false
	if(break_timer > 0 && break_timer != 10000):
		break_timer -= delta
