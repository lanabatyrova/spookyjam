extends Node

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

const SAVE_PATH = "user://save_slot_%d.json" # You can change this to be whatever you want (save_game.txt, game.save etc.), just don't change the 'user://' at the front
const default_dictionary: Dictionary = {"clicks" : 0, "time_elapsed" : 0.0}

## Stores data to a save file to be loaded from later
func save_game(slot: int) -> void:
	var data = {
		"game_state": GameState.get_save_data(),
		"progression": ProgressionTracker.get_save_data(),
		}
	var save_file: FileAccess = FileAccess.open(SAVE_PATH % slot, FileAccess.WRITE)
	if save_file == null:
		print("failed save")
		push_error("Failed to open file.")
		return
	save_file.store_line(JSON.stringify(data))
	save_file.close()

## Loads data from a save file
func load_game(slot: int) -> bool:
	if FileAccess.file_exists(SAVE_PATH % slot): # i.e. The game has been saved before
		var save_file = FileAccess.open(SAVE_PATH % slot, FileAccess.READ)
		var parsed = JSON.parse_string(save_file.get_as_text())
		if typeof(parsed) != TYPE_DICTIONARY:
			return false
		GameState.load_save_data(parsed.get("game_state", {}))
		ProgressionTracker.load_save_data(parsed.get("progression", {}))
		return true
	print("No file found")
	return false

#func reset_save() -> void:
	#save_game(1)
