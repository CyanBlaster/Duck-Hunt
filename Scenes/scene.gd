extends Node2D


var duck = preload("res://Scenes/duck.tscn")
var spawn = false

func spawn_duck():
	var instance = duck.instantiate()
	instance.position.x = randf_range(300, 900)
	instance.position.y = randf_range(0, 300)
	get_tree().get_current_scene().add_child(instance)
func _ready() -> void:
	spawn_duck()
func _process(_delta: float) -> void:
	if global.break_timer <= 0 && global.break_timer != 10000:
		spawn = true
		global.break_timer = 10000
	if(spawn):
		spawn_duck()
		global.timer = 10
		spawn = false
