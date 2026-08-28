extends CharacterBody2D

@export var animator : AnimationPlayer
@export var catch : AudioStreamPlayer
@export var laugh : AudioStreamPlayer
func _ready():
	hide()
func _physics_process(_delta: float) -> void:
	pass
func _process(_delta: float):
	if(!global.Round):
		show()
		if(global.break_timer <= 0 || global.break_timer == 10000):
			hide()
			global.ducks = 0
			global.Round = true
	if(global.play && global.timer <= 0):
		if(global.ducks == 3):
			animator.play("Got_Three_Ducks")
			catch.playing = true
		elif(global.ducks == 2):
			animator.play("Got_Two_Ducks")
			catch.playing = true
		elif(global.ducks == 1):
			animator.play("Got_A_Duck")
			catch.playing = true
		else:
			animator.play("Lmfao")
			laugh.playing = true
		global.play = false
		
