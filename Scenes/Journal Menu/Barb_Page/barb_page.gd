extends Node2D

@onready var clown_school = $ClownSchoolButton
@onready var camp_story = $CampStoryButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_facts(GameState.facts)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_facts(facts):
	clown_school.visible = facts["b_clown_school"]
	camp_story.visible = facts["b_camp_story"]
