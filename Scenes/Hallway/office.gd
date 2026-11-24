extends Node2D

@onready var Bright = $"OfficeDay/Mr Bright"
@onready var night = $OfficeNight

var current_day: int
var is_night: bool


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	current_day = GameState.current_day
	is_night = GameState.midpoint_reached
	update_day(current_day)

func update_day(day: int):
	night.visible = is_night
	Bright.visible = !is_night


func _on_leave_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Transition Locations/School_Upstairs.tscn")
