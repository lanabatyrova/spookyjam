extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_update_hover_state()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _update_hover_state():
	if !GameState.current_day == 7:
		mouse_filter = Control.MOUSE_FILTER_IGNORE
	else:
		mouse_filter = Control.MOUSE_FILTER_STOP

func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Tomb/Tomb.tscn")
	MenuManager.close_map()
