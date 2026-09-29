extends TextureButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func is_convinceable():
	return GameState.items["sewing_kit"] && GameState.facts["clown_school"] && GameState.facts["camp_story"]

func _on_pressed() -> void:
	match GameState.current_day:
		1:
			print("barb dialogue in hallway on day ", GameState.current_day)
			if !GameState.spoken_today["barb"]:
				Dialogic.start("res://Timelines/Loop 1/hallway_njb_1.dtl")
		2:
			if !GameState.spoken_today["barb"]:
				Dialogic.start("res://Timelines/Loop 2/hallway_njb_2.dtl")
		3:
			if !GameState.spoken_today["barb"]:
				Dialogic.start("res://Timelines/Loop 3/hallway_njb_3.dtl")
			elif is_convinceable():
				Dialogic.start("res://Timelines/Loop 3/minigame_b_3.dtl")
		_: print("how did this even happen???")
