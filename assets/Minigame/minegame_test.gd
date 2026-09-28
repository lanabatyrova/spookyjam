
extends Node2D

@onready var minigame1 = $Minigame1
@onready var minigame2 = $Minigame2
@onready var minigame3 = $Minigame3
@onready var minigame4 = $Minigame4


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_background(0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_background(strike: int):
	pass
	#minigame1.visible = Dialogic.VAR.get_variable("strikes_number") == 0
	#minigame2.visible = Dialogic.VAR.get_variable("strikes_number") == 1
	#minigame3.visible = Dialogic.VAR.get_variable("strikes_number") == 2
	#minigame4.visible = Dialogic.VAR.get_variable("strikes_number") == 3
