extends Node


func _on_play_episode_pressed() -> void:
	$"../vhsClick".play()


func _on_episodes_pressed() -> void:
	$"../vhsClick".play()


func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://Main Menu/Main_Menu_Settings.tscn")
