extends RigidBody2D
const damage = 1
var health = 1

func hurt(taken):
	health += -taken
	if health < 1:
		$".".queue_free()
