extends Node2D

var timer = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(Input.is_action_just_pressed("click") && global.shots > 0):
		show()
		timer = 0.05
	if(timer > 0):
		timer -= delta
		if(timer <= 0):
			hide()
