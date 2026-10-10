extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_update_hover_state()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _update_hover_state():
	if !GameState.is_minigame || GameState.current_day != 7:
		mouse_filter = Control.MOUSE_FILTER_IGNORE
	else:
		mouse_filter = Control.MOUSE_FILTER_STOP

func _on_pressed() -> void:
	if(GameState.is_minigame):
		if(GameState.current_day == 7):
			Dialogic.VAR.set_variable("is_success", true)
			Dialogic.VAR.set_variable("current_item", "j_past_adventures")
			MenuManager.close_journal()
		else:
			MenuManager.close_journal()
