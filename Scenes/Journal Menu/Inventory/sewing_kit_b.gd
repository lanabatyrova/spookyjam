extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_update_hover_state()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _update_hover_state():
	if !GameState.is_minigame:
		mouse_filter = Control.MOUSE_FILTER_IGNORE
	else:
		mouse_filter = Control.MOUSE_FILTER_STOP

func _on_pressed() -> void:
	print("Minigame? ", GameState.is_minigame)
	print("Current Day: ", GameState.current_day)
	if(GameState.is_minigame):
		if(GameState.current_day == 3):
			print("Correct location reached!")
			Dialogic.VAR.set_variable("is_success", true)
			Dialogic.VAR.set_variable("current_item", "sewing_kit")
			MenuManager.close_journal()
		else:
			MenuManager.close_journal()
