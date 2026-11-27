extends GridContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	populate_grid(SaveManager.save_files)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_slot_pressed(file: String):
	SaveManager.load_game(file.trim_prefix("save_slot_").get_basename())
	get_tree().change_scene_to_file("res://Scenes/Lizzy's Room/Lizzy's Room.tscn")
	GameManager.start_game(GameState.current_day)

func populate_grid(files):
	for file in files:
		var button = Button.new()
		button.text = generate_save_title(file)
		button.pressed.connect(_on_slot_pressed.bind(file))
		add_child(button)
	print(files)

func generate_save_title(file_name):
	file_name = file_name.trim_prefix("save_slot_").get_basename()
	var day_num = file_name.left(1)
	var day_time = ("Morning" if file_name.substr(1, 1) == "A" else "Evening")
	var manual_marker = ""
	if (file_name.ends_with("manual")):
		manual_marker = "\n(manual)"
	
	return "Loop " + day_num + ", " + day_time + manual_marker
	
