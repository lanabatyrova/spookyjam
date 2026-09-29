extends TextureButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pressed() -> void:
	match GameState.current_day:
		1:
			print("valerie dialogue in library on day ", GameState.current_day)
			if !GameState.spoken_today["valerie"]:
				Dialogic.start("res://Timelines/Loop 1/library_v_1.dtl")
				#GameState.spoken_today["valerie"] = true
		2:
			print("valerie dialogue in library on day ", GameState.current_day)
			# Dialogic.start()
		3:
			print("valerie dialogue in library on day ", GameState.current_day)
			# Dialogic.start()
		4:
			print("valerie dialogue in library on day ", GameState.current_day)
			# Dialogic.start()
		5:
			print("valerie dialogue in library on day ", GameState.current_day)
			# Dialogic.start()
		7:
			print("valerie dialogue in library on day ", GameState.current_day)
			# Dialogic.start()
		_: print("how did this even happen???")
