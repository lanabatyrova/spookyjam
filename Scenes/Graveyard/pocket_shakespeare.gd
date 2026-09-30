extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	Dialogic.VAR.set_variable("collected_item_name", "Annotated Pocket Shakespeare")
	#Dialogic.VAR.set_variable("collected_item_image", "INSERTPATH")
	Dialogic.start("res://Timelines/item_collected.dtl")
	GameState.inventory["pocket_shakespeare"] = true
	get_parent().update_day(get_parent().current_day)
	Dialogic.start("res://Timelines/graveyard_md_2.dtl")
	
