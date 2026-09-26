extends Node2D

@onready var juniper = $JuniperButton
@onready var barb = $BarbButton
@onready var noah = $NoahButton

var current_day: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_day = GameState.current_day
	update_day(current_day)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func update_day(day: int):
	juniper.visible = day in [1,2,3,4]
	barb.visible = day in [1,2,3]
	noah.visible = day in [1,2,3]
