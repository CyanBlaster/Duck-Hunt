extends AudioStreamPlayer
func _process(delta: float) -> void:
	if(Input.is_action_just_pressed("click") && global.shots > 0):
		global.shots -= 1
		play()
