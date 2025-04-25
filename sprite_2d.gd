extends CharacterBody2D

var vx:= 400
var vy:= 200
var vymax:= 4096
var count:= 1

func _ready() -> void:
	pass
	

func _process(delta: float) -> void:
	velocity = Vector2(0, 0)
	vy += 3200 * delta
	if vy > vymax:
		vy = vymax
	if Input.is_action_pressed("amunt") and count >= 1:
		vy = -800
		count = 0
	var moviment := Vector2(vx, vy)
	velocity += moviment
	move_and_slide()
	if is_on_floor_only():
		count = 1
	
	
