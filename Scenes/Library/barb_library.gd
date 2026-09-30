extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	match GameState.current_day:
		4:
			if !GameState.spoken_today["barb"]:
				if !GameState.midpoint_reached:
						Dialogic.start("res://Timelines/Loop 4/library_vb_4.dtl")
				else:
						Dialogic.start("res://Timelines/Loop 4/library_vbn_4.dtl")
		5:
			if !GameState.spoken_today["barb"]:
				if !GameState.midpoint_reached:
						Dialogic.start("res://Timelines/Loop 5/library_vbn_5.dtl")
				else:
						Dialogic.start("res://Timelines/Loop 5/library_vbn_5B.dtl")
		7:
			if !GameState.spoken_today["barb"]:
				Dialogic.start("res://Timelines/Loop 7/library_b_7.dtl")
				if ProgressionTracker.is_requirement_met("7A"):
					# GameState.reset_all_spoken_states() TODO: figure out where to put this!!!
					Dialogic.start("res://Timelines/Loop 7/midpoint_7.dtl")
		_: print("how did this even happen???")
