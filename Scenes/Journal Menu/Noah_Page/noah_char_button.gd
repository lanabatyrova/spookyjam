extends Button


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
	if(GameState.is_minigame):
		MenuManager.close_journal()
