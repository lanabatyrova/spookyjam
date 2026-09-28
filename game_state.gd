extends Node

var settings = {
	"fullscreen" = false,
	"text_speed" = 2, #TODO: check how dialogic takes in text speed
	"volume" = 10 # Volume can be any number from 0-10
}

var current_day: int = 1

# Whether or not you've picked up the item. Displayed in inventory if true.
var inventory = {
	"sewing_kit": false,
	"belt": false,
	"allergy_meds": false,
	"pocket_shakespeare": false,
	"silver_nugget": false,
	"pocket_watch": false,
	"acceptance_letter": false
}

# Note: this currently includes both notes added on character pages
# and additional buttons (ex. dagger's polaroid for lm_dagger_vouch
# and bff photo) to more easily keep track of them. Could be used
# both for journal display and mini game button appearances?
var facts = {
	"v_case_study": false,
	"v_future_worries": false,
	"b_camp_story": false,
	"b_clown_school": false,
	"n_detention": false,
	"d_brother_death": false,
	"d_zombie_plan": false,
	"lm_dagger_vouch": false,
	"j_bffs": false,
	"j_past_adventures": false
}

var objectives = {
	"convince_A": false,
	"convince_B": false
	#TODO: add other info
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_dialogic_layer()
	

func set_dialogic_layer():
	var dialogic_canvas = get_tree().root.find_child("DialogicLayout_DefaultStyle", true, false)
	if dialogic_canvas:
		print("Dialogic canvas layer set to 15")
		dialogic_canvas.layer = 15
	else:
		print("error, no dialogic canvas found")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func next_day():
	current_day += 1
	print("Cur day: ", current_day) #TODO:remove debug print
