extends TextureButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func can_be_convinced() -> bool:
	return GameState.inventory["pocket_watch"] && GameState.facts["v_case_study"] && GameState.facts["v_future_worries"]

func _on_pressed() -> void:
	if !GameState.midpoint_reached:
		morning_branch()
	else:
		evening_branch()

func morning_branch():
	match GameState.current_day:
		1:
			if !GameState.spoken_today["valerie"]:
				Dialogic.start("res://Timelines/Loop 1/library_v_1.dtl")
				await Dialogic.timeline_ended
				if ProgressionTracker.is_requirement_met("1A"):
					Dialogic.start("res://Timelines/Loop 1/midpoint_1.dtl")
					await Dialogic.timeline_ended
					get_parent().update_day(GameState.current_day)
		2:
			if !GameState.spoken_today["valerie"]:
				if can_be_convinced():
					Dialogic.start("res://Timelines/Loop 2/library_v_2.dtl")
					var emitted_signal
					while (emitted_signal != "midpoint_updated"):
						emitted_signal = await Dialogic.signal_event
					get_parent().update_day(GameState.current_day)
				else:
					Dialogic.start("res://Timelines/not_ready_vo.dtl")
		3:
			if !GameState.spoken_today["valerie"]:
				Dialogic.start("res://Timelines/Loop 3/library_v_3.dtl")
				await Dialogic.timeline_ended
				if ProgressionTracker.is_requirement_met("3A"):
					Dialogic.start("res://Timelines/Loop 1/midpoint_3.dtl")
					
		4:
			if !GameState.spoken_today["valerie"]:
				Dialogic.start("res://Timelines/Loop 4/library_vb_4.dtl")
		5:
			if !GameState.spoken_today["valerie"]:
				Dialogic.start("res://Timelines/Loop 5/library_vbn_5.dtl")
		6:
			if !GameState.spoken_today["valerie"]:
				Dialogic.start("res://Timelines/Loop 6/library_vbn_6.dtl")
		7:
			if !GameState.spoken_today["valerie"]:
				Dialogic.start("res://Timelines/Loop 7/library_vbndm_7.dtl")
				if ProgressionTracker.is_requirement_met("7A"):
					Dialogic.start("res://Timelines/Loop 7/library_vbndm_7.dtl")
		_: print("how did this even happen???")
	
	
func handle_morning_1():
	pass
func handle_morning_2():
	pass
func handle_morning_3():
	pass
func handle_morning_4():
	pass
func handle_morning_5():
	pass
func handle_morning_6():
	pass
func handle_morning_7():
	pass
	
	
	
	
func evening_branch():
	match GameState.current_day:
		1:
			Dialogic.start("res://Timelines/Loop 1/library_v_1B.dtl")
		2:
			Dialogic.start("res://Timelines/Loop 2/library_v_2B.dtl")
		3:
			Dialogic.start("res://Timelines/Loop 1/library_v_1B.dtl")
		4:
			Dialogic.start("res://Timelines/Loop 4/library_vbn_4.dtl")
		5:
			Dialogic.start("res://Timelines/Loop 5/library_vbn_5B.dtl")
		_: print("how did this even happen???")
