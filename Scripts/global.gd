extends Node
var points = 0
var ducks = 0
var timer = 10
var shots = 5
var break_timer = 0
var Round = true
var play = false
func _process(delta: float) -> void:
	if(Round):
		timer -= delta
		if(shots == 0):
			timer = 0
		if(timer <= 0):
			play = true
			break_timer = 3
			Round = false
	if(break_timer > 0 && break_timer != 10000):
		break_timer -= delta
