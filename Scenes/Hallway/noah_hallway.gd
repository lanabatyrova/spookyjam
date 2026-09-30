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
			if !GameState.spoken_today["noah"]:
				Dialogic.start("res://Timelines/Loop 1/hallway_jbn_1.dtl")
				await Dialogic.timeline_ended
				if ProgressionTracker.is_requirement_met("1A"):
					Dialogic.start("res://Timelines/Loop 1/midpoint_1.dtl")
					await Dialogic.timeline_ended
					get_parent().update_day(GameState.current_day)
		2:
			if !GameState.spoken_today["noah"]:
				Dialogic.start("res://Timelines/Loop 2/hallway_jbn_2.dtl")
		3:
			if !GameState.spoken_today["noah"]:
				Dialogic.start("res://Timelines/Loop 3/hallway_jbn_3.dtl")
				await Dialogic.timeline_ended
				if ProgressionTracker.is_requirement_met("3A"):
					Dialogic.start("res://Timelines/Loop 3/midpoint_3.dtl")
					await Dialogic.timeline_ended
					get_parent().update_day(GameState.current_day)
		_: print("how did this even happen???")
