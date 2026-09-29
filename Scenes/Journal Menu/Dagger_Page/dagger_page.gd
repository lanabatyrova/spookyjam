extends Node2D

@onready var brother_death = $BrotherDeathButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_facts(GameState.facts)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_facts(facts):
	brother_death.visible = facts["d_brother_death"]
