extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_grad_poster_pressed() -> void:
	Dialogic.start("res://Scenes/Transition Locations/Grad Poster.dtl")


func _on_group_polaroid_pressed() -> void:
	Dialogic.start("res://Scenes/Transition Locations/group Polaroid.dtl")


func _on_return_to_hallway_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Hallway/Hallway.tscn")
