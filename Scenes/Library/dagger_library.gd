extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pressed() -> void:
	match GameState.current_day:
		7:
			if ProgressionTracker.is_requirement_met("7A"):
				Dialogic.start("res://Timelines/Loop 7/library_vbndm_7.dtl")
				var emitted_signal
				while (emitted_signal != "midpoint_updated"):
					emitted_signal = await Dialogic.signal_event
				get_tree().change_scene_to_file("res://Scenes/Graveyard/Graveyard.tscn")
			else:
				if !GameState.spoken_today["dagger"]:
					Dialogic.start("res://Timelines/Loop 7/library_d_7.dtl")
		_: print("how did this even happen???")
