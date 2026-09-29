extends Node2D

@onready var case_study = $CaseStudyButton
@onready var future_worries = $FutureWorriesButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_facts(GameState.facts)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_facts(facts):
	case_study.visible = facts["v_case_study"]
	future_worries.visible = facts["v_future_worries"]
