extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_mine_enter_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Silver Mine/SilverMine.tscn")


func _on_to_mine_street_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Transition Locations/Mine Street Far.tscn")
