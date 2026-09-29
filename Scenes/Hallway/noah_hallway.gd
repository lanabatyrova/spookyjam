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
			if !GameState.spoken_today["noah"]:
				Dialogic.start("res://Timelines/Loop 1/hallway_jbn_1.dtl")
				#GameState.spoken_today["noah"] = true
		2:
			print("noah dialogue in hallway on day ", GameState.current_day)
			if !GameState.spoken_today["noah"]:
				Dialogic.start("res://Timelines/Loop 2/hallway_jbn_2.dtl")
		3:
			print("noah dialogue in hallway on day ", GameState.current_day)
			if !GameState.spoken_today["noah"]:
				Dialogic.start("res://Timelines/Loop 3/hallway_jbn_3.dtl")
		_: print("how did this even happen???")
