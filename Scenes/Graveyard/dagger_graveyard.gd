extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func is_convinceable():
	return GameState.items["silver_nugget"] && GameState.facts["d_brother_death"] && GameState.facts["d_zombie_plan"]


func _on_pressed() -> void:
	match GameState.current_day:
		1:
			if !GameState.spoken_today["dagger"]:
				Dialogic.start("res://Timelines/Loop 1/graveyard_d_1.dtl")
		3:
			if !GameState.spoken_today["dagger"]:
				Dialogic.start("res://Timelines/Loop 3/graveyard_d_3.dtl")
		4:
			if !GameState.spoken_today["dagger"]:
				Dialogic.start("res://Timelines/Loop 4/graveyard_d_4.dtl")
		5:
			if !GameState.spoken_today["dagger"]:
				Dialogic.start("res://Timelines/Loop 4/graveyard_d_5.dtl")
		6:
			if !GameState.spoken_today["dagger"]:
				Dialogic.start("res://Timelines/Loop 6/graveyard_dbnm_6.dtl")
		_: print("how did this even happen???")
