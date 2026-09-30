extends TextureButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	# Open item collection dialogue
	# the letter will always be collectible if it's visible
	Dialogic.VAR.set_variable("collected_item_name", "Acceptance Letter")
	Dialogic.VAR.set_variable("collected_item_image", "res://Temp Assets/temp items/letter-8052497_1280-2988743124.png")
	Dialogic.start("res://Timelines/item_collected.dtl")
	GameState.pick_up_item("acceptance_letter")
	get_parent().update_day(get_parent().current_day)
