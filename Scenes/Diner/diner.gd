extends Node2D

@onready var meds = $AllergyMeds
@onready var barb = $BarbButton
@onready var juniper = $JuniperButton
@onready var noah = $NoahButton
@onready var evening = $DinerNight

var current_day: int
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	current_day = GameState.current_day
	update_day(current_day)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_day(day: int):
	meds.visible = !GameState.inventory["allergy_meds"]
	barb.visible = day in [1,2] && GameState.midpoint_reached
	juniper.visible = day in [1,2,4] && GameState.midpoint_reached
	noah.visible = day in [1,2] && GameState.midpoint_reached
	evening.visible = GameState.midpoint_reached
