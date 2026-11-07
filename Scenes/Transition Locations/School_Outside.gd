extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_door_inside_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Hallway/Hallway.tscn")
	


func _on_school_road_exit_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Transition Locations/School Road.tscn")
