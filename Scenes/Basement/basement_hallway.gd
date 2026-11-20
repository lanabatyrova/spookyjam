extends Node2D

@onready var night = $BasementNight

var current_day: int
var is_night: bool
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	current_day = GameState.current_day
	is_night = GameState.midpoint_reached
	update_day(current_day, is_night)

func update_day(day: int, is_night):
	night.visible = is_night

func _on_boilerroom_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Basement/boiler_room.tscn")


func _on_exit_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Basement/Basement.tscn")
