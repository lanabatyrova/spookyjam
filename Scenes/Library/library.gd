extends Node2D

@onready var val = $ValerieButton
@onready var barb = $BarbButton
@onready var noah = $NoahButton
@onready var dagger = $DaggerButton
@onready var lady = $LadyButton

var current_day: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_day = GameState.current_day
	update_day(current_day)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_day(day: int):
	val.visible = day in [1,2,3,4,5,6] || day in [7] && !GameState.midpoint_reached
	barb.visible = day in [4,5]  || day in [6,7] && !GameState.midpoint_reached
	noah.visible = day in [5] || day in [4] && GameState.midpoint_reached || day in [6,7] && !GameState.midpoint_reached
	dagger.visible = day in [7] && !GameState.midpoint_reached
	lady.visible = day in [7] && !GameState.midpoint_reached
