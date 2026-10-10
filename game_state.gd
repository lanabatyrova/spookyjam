extends Node

var settings = {
	"fullscreen" = false,
	"text_speed" = 2, #TODO: check how dialogic takes in text speed
	"volume" = 10 # Volume can be any number from 0-10
}

var current_day: int = 5
var midpoint_reached = false
var is_minigame = false

# Whether or not you've picked up the item. Displayed in inventory if true.
var inventory = {
	"sewing_kit": false,
	"belt": true,
	"allergy_meds": true,
	"pocket_shakespeare": false,
	"silver_nugget": true,
	"pocket_watch": false,
	"acceptance_letter": false
}

var item_collectible = {
	"sewing_kit": false,
	"belt": false,
	"allergy_meds": true,
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
	"v_case_study": true,
	"v_future_worries": true,
	"b_camp_story": false,
	"b_clown_school": true,
	"n_detention": true,
	"d_brother_death": true,
	"d_zombie_plan": true,
	"m_suspition": false, # lmd is causing the loop?
	"m_absolved": false, #no she's not
	"m_shakespeare_hate": false,
	"m_phone": false, #LMD phone number
	"m_name": false, # LMD name change to Knightmare
	"j_clairvoyance": false,
	"j_bffs": false, # bff sticker (clickable, visible always)
	"j_past_adventures": false # beastiary page (clickable. visible always)
}

var objectives = {
	"convince_A": false,
	"convince_B": false
	#TODO: add other info
}

# TODO: should reset to all false when the day ends!!!
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
	
func mark_characters_as_spoken(names):
	#print(names)
	for name in names:
		spoken_today[name] = true
	#print(spoken_today)

func pick_up_item(name):
	inventory[name] = true

func learn_fact(name):
	facts[name] = true

func make_item_collectible(name):
	item_collectible[name] = true
	#print(item_collectible)

func complete_task(name):
	objectives[name] = true

func reach_midpoint():
	midpoint_reached = true
	reset_all_spoken_states()

func reset_midpoint():
	midpoint_reached = false

func reset_all_spoken_states():
	spoken_today = {
	"juniper": false,
	"noah": false,
	"barb": false,
	"valerie": false,
	"lady_macdeath": false,
	"dagger": false
}

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
	Dialogic.VAR.set_variable("cur_day", current_day)
	midpoint_reached = false
	get_tree().change_scene_to_file("res://Scenes/Lizzy's Room/Lizzy's Room.tscn")
	print("Cur day: ", current_day) #TODO:remove debug print





# ---------debug helper section-----------
