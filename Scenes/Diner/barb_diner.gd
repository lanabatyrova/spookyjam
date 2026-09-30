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
			if !GameState.spoken_today["barb"]:
				Dialogic.start("res://Timelines/Loop 1/diner_jb_1.dtl")
		2:
			if !GameState.spoken_today["barb"]:
				Dialogic.start("res://Timelines/Loop 2/diner_jb_2.dtl")
		_: print("how did this even happen???")
