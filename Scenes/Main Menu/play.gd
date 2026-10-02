extends TextureButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Lizzy's Room/Lizzy's Room.tscn")
	start_day(GameState.current_day)
	

func start_day(day):
	match (day):
		0:
			Dialogic.start("res://Timelines//Loop 0/previously_on_timeline.dtl")
		1:
			Dialogic.start("res://Timelines/Loop 1/intro_1.dtl")
		2:
			Dialogic.start("res://Timelines/Loop 2/intro_2.dtl")
		3:
			Dialogic.start("res://Timelines/Loop 3/intro_3.dtl")
		4:
			Dialogic.start("res://Timelines/Loop 4/intro_4.dtl")
		5:
			Dialogic.start("res://Timelines/Loop 5/intro_5.dtl")
		6:
			Dialogic.start("res://Timelines/Loop 6/intro_6.dtl")
		7:
			Dialogic.start("res://Timelines/Loop 7/intro_7.dtl")
