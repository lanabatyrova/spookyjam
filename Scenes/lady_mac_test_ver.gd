extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	match GameState.current_day:
		3:
			Dialogic.start("res://Timelines/test/test_timeline_d3.dtl")
		5:
			Dialogic.start("res://Timelines/test/test_timeline_d5.dtl")
		_: print("how did this even happen???")
