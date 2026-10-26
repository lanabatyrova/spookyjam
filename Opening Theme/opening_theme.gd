extends DialogicBackground


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_lizzy_springs_theme_edited_ready() -> void:
	$LizzySpringsThemeEdited.play()


func _on_lizzy_springs_theme_edited_finished() -> void:
	get_tree().change_scene_to_file("res://Timelines/Loop 0/prologue_1.dtl")
