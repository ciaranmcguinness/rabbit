extends Control


# Called when the node enters the scene tree for the first time.
const save_path = "user://player_data.tres"

func _on_button_pressed():
	get_tree().change_scene_to_file("res://level_select.tscn")
