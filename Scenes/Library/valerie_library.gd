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
		2:
			print("valerie dialogue in library on day ", GameState.current_day)
			if !GameState.spoken_today["valerie"]:
				Dialogic.start("res://Timelines/Loop 2/library_v_2.dtl")
		3:
			print("valerie dialogue in library on day ", GameState.current_day)
			if !GameState.spoken_today["valerie"]:
				Dialogic.start("res://Timelines/Loop 3/library_vb_3.dtl")
		4:
			print("valerie dialogue in library on day ", GameState.current_day)
			if !GameState.spoken_today["valerie"]:
				Dialogic.start("res://Timelines/Loop 4/library_vb_4.dtl")
		5:
			print("valerie dialogue in library on day ", GameState.current_day)
			if !GameState.spoken_today["valerie"]:
				Dialogic.start("res://Timelines/Loop 5/library_vbn_5.dtl")
		7:
			print("valerie dialogue in library on day ", GameState.current_day)
			Dialogic.start("res://Timelines/Loop 7/library_vbndm_7.dtl")
		_: print("how did this even happen???")
