extends Node2D

@onready var detention = $DetentionButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_facts(GameState.facts)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func update_facts(facts):
	detention.visible = facts["n_detention"]
