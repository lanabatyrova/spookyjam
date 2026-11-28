extends TextureButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pressed() -> void:
	SaveManager.update_save_files()
	get_tree().change_scene_to_file("res://Scenes/Lizzy's Room/Lizzy's Room.tscn")
	if SaveManager.save_files.is_empty():
		print("No save found, running default game")
		GameManager.start_game_day(GameState.current_day)
	else:
		var current_file_name = SaveManager.save_files[0].trim_prefix("save_slot_").get_basename()
		SaveManager.load_game(current_file_name)
		if(SaveManager.is_manual(current_file_name) || GameState.midpoint_reached):
			GameManager.start_game_midpoint(GameState.current_day)
		else:
			GameManager.start_game_day(GameState.current_day)
