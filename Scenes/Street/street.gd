extends Node2D

@onready var juniper = $JuniperButton
@onready var evening = $StreetNight

var current_day: int
var is_night: bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_day = GameState.current_day
	is_night = GameState.midpoint_reached
	update_day(current_day, is_night)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_day(day: int, is_night):
	juniper.visible = day in [5] && GameState.midpoint_reached
	evening.visible = is_night
