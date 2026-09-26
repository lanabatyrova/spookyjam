extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	match GameState.current_day:
		1:
			print("dagger dialogue in graveyard on day ", GameState.current_day)
			# Dialogic.start()
		2:
			print("dagger dialogue in graveyard on day ", GameState.current_day)
			# Dialogic.start()
		3:
			print("dagger dialogue in graveyard on day ", GameState.current_day)
			# Dialogic.start()
		4:
			print("dagger dialogue in graveyard on day ", GameState.current_day)
			# Dialogic.start()
		5:
			print("dagger dialogue in graveyard on day ", GameState.current_day)
			# Dialogic.start()
		6:
			print("dagger dialogue in graveyard on day ", GameState.current_day)
			# Dialogic.start()
		7:
			print("dagger dialogue in graveyard on day ", GameState.current_day)
			# Dialogic.start()
		_: print("how did this even happen???")
