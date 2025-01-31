extends Node2D

const damage = 0

func hurt(_taken):
	$AnimatedSprite2D.play("new_animation")


func _on_animated_sprite_2d_animation_finished():
	print($AnimatedSprite2D.animation)
	if $AnimatedSprite2D.animation == "new_animation":
		$AnimatedSprite2D.play("default")
