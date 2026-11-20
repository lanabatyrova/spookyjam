extends Node2D

@onready var noah = $NoahButton
@onready var destroyed = $NoahDestroyedContraption
@onready var machine = $NoahContraption

var current_day: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_hallway_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Basement/basement_hallway.tscn")


func _on_school_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Hallway/Hallway.tscn")
