extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_library_enter_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Library/Library.tscn")


func _on_to_mine_street_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Transition Locations/Mine Street Close.tscn")


func _on_to_silver_street_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Transition Locations/City Road Silver Street.tscn")


func _on_city_hall_pressed() -> void:
	pass # Replace with function body.
