extends Control

func _on_play_pressed():
	pass # Replace with function body.

func _on_options_pressed():
	get_tree().change_scene_to_file("res://settings.tscn")

func _on_exit_pressed():
	get_tree().quit()
