extends Node2D

@onready var noah = $NoahButton
@onready var destroyed = $NoahDestroyedContraption
@onready var machine = $NoahContraption
@onready var night = $Basement_night

var current_day: int
var is_night: bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_day = GameState.current_day
	is_night = GameState.midpoint_reached
	update_day(current_day)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_day(day: int):
	noah.visible = day in [1,2,3,4] && !GameState.midpoint_reached
	destroyed.visible = day in [1,2,3] && GameState.midpoint_reached
	machine.visible = day in [5,6,7] || day in [1,2,3,4] && !GameState.midpoint_reached
	night.visible = is_night


func _on_hallway_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Basement/basement_hallway.tscn")


func _on_noah_outline_pressed() -> void:
	Dialogic.start("res://Scenes/Basement/noah_outline.dtl")
