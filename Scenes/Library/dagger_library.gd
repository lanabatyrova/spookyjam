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
			if !GameState.spoken_today["noah"]:
				Dialogic.start("res://Timelines/Loop 7/library_d_7.dtl")
				if ProgressionTracker.is_requirement_met("7A"):
					Dialogic.start("res://Timelines/Loop 7/library_vbndm_7.dtl")
		_: print("how did this even happen???")
