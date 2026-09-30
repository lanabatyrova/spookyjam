extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pressed() -> void:
	if(GameState.item_collectible["sewing_kit"]):
		Dialogic.VAR.set_variable("collected_item_name", "Potable Sewing Kit")
		#Dialogic.VAR.set_variable("collected_item_image", "INSERTPATH")
		Dialogic.start("res://Timelines/item_collected.dtl")
		GameState.inventory["sewing_kit"] = true
		get_parent().update_day(get_parent().current_day)
	else:
		Dialogic.start("res://Timelines/unnecessary_item.dtl")
	
