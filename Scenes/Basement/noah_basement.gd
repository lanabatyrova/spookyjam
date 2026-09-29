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
			print("noah dialogue in hallway on day ", GameState.current_day)
			if !GameState.spoken_today["noah"]:
				Dialogic.start("res://Timelines/Loop 4/minigame_n_4.dtl")
				#GameState.spoken_today["noah"] = true
