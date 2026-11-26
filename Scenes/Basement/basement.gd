extends Node2D

@onready var noah = $NoahButton
@onready var destroyed = $NoahDestroyedContraption
@onready var machine = $NoahContraption
@onready var night = $Basement_night

var current_day: int
var is_night: bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	current_day = GameState.current_day
	is_night = GameState.midpoint_reached
	update_day(current_day, is_night)


func _on_hallway_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Basement/basement_hallway.tscn")


func _on_school_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Hallway/Hallway.tscn")


func update_day(day: int, is_night):
	night.visible = is_night


func _on_texture_button_pressed() -> void:
	Dialogic.start("res://Scenes/Basement/glitter.dtl")
