extends Area2D

func _on_Glass_body_entered(body):
	if body.is_in_group("waves") == false: return

	var velocity : Vector2
	velocity.x = cos(rotation)
	velocity.y = sin(rotation)

	if velocity > Vector2.ZERO:
		body.apply_impulse(Vector2.ZERO, (velocity)*body.speed / 2)
	else:
		body.apply_impulse(Vector2.ZERO, (-velocity)*body.speed / 2)
	
