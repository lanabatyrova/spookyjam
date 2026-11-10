extends Node2D

@onready var noah = $NoahButton
@onready var destroyed = $NoahDestroyedContraption
@onready var machine = $NoahContraption

var current_day: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_day = GameState.current_day
	update_day(current_day)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_day(day: int):
	noah.visible = day in [1,2,3,4] && !GameState.midpoint_reached
	destroyed.visable = day in [1,2,3] && GameState.midpoint_reached
	machine.visable = day in [5,6,7] || day in [1,2,3,4] && !GameState.midpoint_reached
