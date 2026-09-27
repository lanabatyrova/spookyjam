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
			print("noah dialogue in hallway on day ", GameState.current_day)
			if !get_parent().spoken:
				Dialogic.start("res://Timelines/Loop 1/hallway_njb_1.dtl")
				get_parent().spoken = true
		2:
			print("noah dialogue in hallway on day ", GameState.current_day)
			# Dialogic.start()
		3:
			print("noah dialogue in hallway on day ", GameState.current_day)
			# Dialogic.start()
		_: print("how did this even happen???")
