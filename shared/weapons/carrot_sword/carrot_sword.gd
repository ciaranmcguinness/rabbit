extends Node2D

var enabled = false

func _ready():
	$Sprite2D.visible = false

func attack():
	if not enabled:
		enabled = true
		$Sprite2D.visible = true
		$Timer.start(0.25)
		$Area2D.monitoring = true

func handle_collision(body):
		var p = body.get_parent()
		print(body.name)
		if body.name.to_lower().contains("enemy"):
			print("Hurt" + p.name )
			body.hurt(1)

func _on_area_2d_body_entered(body):
	if enabled:
		handle_collision(body)



func _on_timer_timeout():
	$Sprite2D.visible = false
	enabled = false
	$Area2D.monitoring = false
