extends CharacterBody2D

@export var animator : AnimationPlayer
const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var timer = 0
var dead = false
func _process(_delta: float) -> void:
	if(!dead):
		animator.play("Flight 1")
	else:
		animator.play("Falling")
	if(global.timer <= 0):
		queue_free()
func _physics_process(delta: float) -> void:
	if(!dead):
		timer -= delta
		if(timer <= 0):
			velocity.x = randf_range(-1, 1) * SPEED
			velocity.y = randf_range(-1, 1) * SPEED
			timer = randf_range(0.5, 1)
	else:
		velocity.x = 0
		velocity.y = SPEED
		if(position.y > 600):
			queue_free()
	move_and_slide()
func _on_area_2d_input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if(Input.is_action_just_pressed("click") && !dead):
		global.points += 100
		global.ducks += 1
		animator.play("Death")
		dead = true
