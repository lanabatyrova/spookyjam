extends Node2D

@onready var zombie_plan = $ZombiePlanButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_facts(GameState.facts)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_facts(facts):
	zombie_plan.visible = facts["d_zombie_plan"]
