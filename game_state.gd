extends Node

var settings = {
	"fullscreen" = false,
	"text_speed" = 2, #TODO: check how dialogic takes in text speed
	"volume" = 10 # Volume can be any number from 0-10
}

var current_day: int = 3

# Whether or not you've picked up the item. Displayed in inventory if true.
var inventory = {
	"sewing_kit": true,
	"belt": true,
	"allergy_meds": true,
	"pocket_shakespeare": true,
	"silver_nugget": true,
	"pocket_watch": true,
	"acceptance_letter": true
}

# Note: this currently includes both notes added on character pages
# and additional buttons (ex. dagger's polaroid for lm_dagger_vouch
# and bff photo) to more easily keep track of them. Could be used
# both for journal display and mini game button appearances?
var facts = {
	"v_case_study": true,
	"v_future_worries": true,
	"b_camp_story": true,
	"b_clown_school": true,
	"n_detention": true,
	"d_brother_death": true,
	"d_zombie_plan": true,
	"lm_dagger_vouch": true, # dagger's portrait
	"j_clairvoyance": true,
	"j_bffs": true, # bff sticker
	"j_past_adventures": true # beastiary page
}

var objectives = {
	"convince_A": false,
	"convince_B": false
	#TODO: add other info
}

var is_minigame = true

# TODO: should reset to all false when the day ends!!!!
# might change how this is structured, but this makes the most sense atm
var spoken_today = {
	"juniper": false,
	"noah": false,
	"barb": false,
	"valerie": false,
	"lady_macdeath": false,
	"dagger": false
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_dialogic_layer()
	

func start_minigame():
	is_minigame = true

func end_minigame():
	is_minigame = false
	
func mark_character_as_spoken(name):
	spoken_today[name] = true

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
