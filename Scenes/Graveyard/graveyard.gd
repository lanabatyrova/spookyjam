extends Node2D

@onready var dagger = $DaggerButton
@onready var shakespeare = $PocketShakespeare
@onready var evening = $GraveyardNight

var current_day: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_day = GameState.current_day
	update_day(current_day)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_day(day: int):
	dagger.visible = day in [1,3,4,5,6] && GameState.midpoint_reached
	shakespeare.visible = day in [2] && GameState.midpoint_reached && !GameState.inventory["pocket_shakespeare"]
	evening.visible = GameState.midpoint_reached


func _on_to_graveyard_way_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Transition Locations/Graveyard Way.tscn")
