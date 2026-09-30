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
	val.visible = day in [1,2,3,4,5,6,7]
	barb.visible = day in [4,5,6,7]
	noah.visible = day in [6,7] || day in [5] && GameState.midpoint_reached
	dagger.visible = day in [7]
	lady.visible = day in [7]
