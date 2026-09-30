extends Node2D

@onready var zombie_plan = $ZombiePlanButton
@onready var hates_shakespeare = $ShakespeareButton
@onready var lady_phone = $LadyPhoneButton
@onready var lady_name = $LadyNameButton
@onready var time_loop = $TimeLoopButton
@onready var time_loop_scribble = $TimeLoopScribbleButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_facts(GameState.facts)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_facts(facts):
	zombie_plan.visible = facts["d_zombie_plan"]
	hates_shakespeare.visible = facts["m_shakespeare_hate"]
	lady_phone.visible = facts["m_phone"]
	lady_name.visible = facts["m_name"]
	time_loop.visible = facts["m_suspition"]
	time_loop_scribble.visible = facts["m_absolved"]
