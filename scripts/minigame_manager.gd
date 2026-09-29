
extends Node2D

var strikes = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_background(0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_background(strike: int):
	pass

func add_strike():
	strikes += 1

func reset_strikes():
	strikes = 0
