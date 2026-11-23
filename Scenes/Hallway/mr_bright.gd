extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pressed() -> void:
	pass #match GameState.current_day:
		#1,2,3,4,5,6,7:
			#if !GameState.spoken_today["mr_bight"]:
				#Dialogic.start("res://Timelines/Loop 1/hallway_jbn_1.dtl")
				#await Dialogic.timeline_ended
