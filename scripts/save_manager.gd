extends Node

var save_files

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_save_files()
	print(save_files)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

const SAVE_PATH = "user://save_slot_%s.json" # You can change this to be whatever you want (save_game.txt, game.save etc.), just don't change the 'user://' at the front
const default_dictionary: Dictionary = {"clicks" : 0, "time_elapsed" : 0.0}

func update_save_files():
	save_files = get_save_files()

func get_save_files():
	var saves = []
	for file in DirAccess.get_files_at("user://"):
		if file.begins_with("save_slot_"):
			saves.append(file)
	
	# sort from newest to oldest
	saves.sort_custom(func(a,b):
		return FileAccess.get_modified_time("user://" + a) > FileAccess.get_modified_time("user://" + b))

	return saves

# Saves a file to save_slot_[day][A/B]_manual
func manual_save():
	var save_string = str(GameState.current_day) + ("B" if GameState.midpoint_reached else "A") + "_manual"
	save_game(save_string)

# Saves a file to save_slot_[day][A/B].json
func auto_save():
	var save_string = str(GameState.current_day) + ("B" if GameState.midpoint_reached else "A")
	save_game(save_string)

## Stores data to a save file to be loaded from later
func save_game(slot) -> void:
	print("saving!!!")
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
func load_game(slot) -> bool:
	print(slot)
	if FileAccess.file_exists(SAVE_PATH % slot): # i.e. The game has been saved before
		var save_file = FileAccess.open(SAVE_PATH % slot, FileAccess.READ)
		var parsed = JSON.parse_string(save_file.get_as_text())
		if typeof(parsed) != TYPE_DICTIONARY:
			return false
		GameState.load_save_data(parsed.get("game_state", {}))
		ProgressionTracker.load_save_data(parsed.get("progression", {}))
		return true
	else:
		print(SAVE_PATH % slot)
		print("No file found")
	return false

func is_manual(file_name):
	if file_name.ends_with("manual"):
		return true
	return false

#func reset_save() -> void:
	#save_game(1)
