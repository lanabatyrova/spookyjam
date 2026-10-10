extends Node2D

@onready var clairvoyance = $ClairvoyanceButton
@onready var emmerdale = $EmmerdaleButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_facts(GameState.facts, GameState.inventory)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_facts(facts, inventory):
	clairvoyance.visible = facts["j_clairvoyance"]
	emmerdale.visible = inventory["acceptance_letter"]
