extends CharacterBody2D


@export var animator : AnimationPlayer
func _ready():
	hide()

func _physics_process(_delta: float) -> void:
	pass
	
func _process(delta: float):
	if(!global.Round):
		if(global.ducks == 1):
			animator.play("Got_A_Duck")
		else:
			animator.play("Lmfao")
		show()
		if(global.break_timer <= 0 || global.break_timer == 10000):
			hide()
			global.Round = true
		
