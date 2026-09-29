extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	if(GameState.is_minigame):
		if(GameState.current_day == 5 || GameState.current_day == 6):
			Dialogic.VAR.set_variable("is_success", true)
			Dialogic.VAR.set_variable("current_item", "d_zombie_plan")
			MenuManager.close_journal()
		else:
			MenuManager.close_journal()
