extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func can_be_convinced() -> bool:
	return GameState.inventory["belt"] && GameState.facts["n_detention"] && GameState.facts["n_allergy_meds"]

func _on_pressed() -> void:
	if can_be_convinced():
		Dialogic.start("res://Timelines/Loop 4/basement_n.dtl")
	else:
		Dialogic.start("res://Timelines/not_ready_vo.dtl")
