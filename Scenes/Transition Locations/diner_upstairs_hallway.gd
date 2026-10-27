extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_parents_room_pressed() -> void:
	Dialogic.start("res://Scenes/Transition Locations/Parent's Room.dtl")


func _on_lizzys_room_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Lizzy's Room/Lizzy's Room.tscn")


func _on_diner_stairs_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Transition Locations/Diner_Stairs.tscn")
