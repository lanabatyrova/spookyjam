extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_to_mine_street_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Transition Locations/Graveyard Way Junction.tscn")


func _on_graveyard_door_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Graveyard/Graveyard.tscn")


func _on_silver_street_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Transition Locations/Park Ave.tscn")
