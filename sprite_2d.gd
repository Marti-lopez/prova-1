extends CharacterBody2D

var velocitat:= 200

func _ready() -> void:
	position = Vector2(0, 0)
	

func _process(delta: float) -> void:
	var direccio := Vector2.ZERO
	direccio = Input.get_vector("esquerra", "dreta", "amunt", "avall")
	velocity = direccio * velocitat
	move_and_slide()

	
	
	
