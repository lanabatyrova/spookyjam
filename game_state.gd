extends Node

var current_day: int = 8
var midpoint_reached = false
var is_minigame = false

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

var item_collectible = {
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
	"v_case_study": true,
	"v_future_worries": true,
	"b_camp_story": true,
	"b_clown_school": true,
	"n_detention": true,
	"d_brother_death": true,
	"d_zombie_plan": true,
	"m_suspition": true, # lmd is causing the loop?
	"m_absolved": true, #no she's not
	"m_shakespeare_hate": true,
	"m_phone": true, #LMD phone number
	"m_name": true, # LMD name change to Knightmare
	"j_clairvoyance": true,
	"j_bffs": true, # bff sticker (clickable, visible always)
	"j_past_adventures": true # beastiary page (clickable. visible always)
}

var dialogue_facts = {
	"example": false, #testing
	"example_2": -1, #0 = burgers, 1 = fries, 2 = pizza
	"v_car": false
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
	"dagger": false,
	"mr_bright": false,
	"parents" : false
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_dialogic_layer()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# ------------ Save/Load section START ---------------

func get_save_data() -> Dictionary:
	return {
		"current_day": current_day,
		"midpoint_reached": midpoint_reached,
		"is_minigame": is_minigame,
		"inventory": inventory,
		"item_collectible": item_collectible,
		"facts": facts,
		"dialogue_facts": dialogue_facts,
		"objectives": objectives,
		"spoken_today": spoken_today
	}

func load_save_data(data: Dictionary):
	#print("GAME STATE: \n")
	current_day = data.get("current_day", current_day)
	midpoint_reached = data.get("midpoint_reached", midpoint_reached)
	is_minigame = data.get("is_minigame", is_minigame)
	inventory = data.get("inventory", inventory)
	item_collectible = data.get("item_collectible", item_collectible)
	facts = data.get("facts", facts)
	dialogue_facts = data.get("dialogue_facts", dialogue_facts)
	objectives = data.get("objectives", objectives)
	spoken_today = data.get("spoken_today", spoken_today)
	
	#print(spoken_today)

# ------------ Save/Load section END ---------------

func start_minigame():
	is_minigame = true

func end_minigame():
	is_minigame = false
	
func mark_characters_as_spoken(char_names):
	#print(names)
	for char_name in char_names:
		spoken_today[char_name] = true
	print(spoken_today)

func pick_up_item(item_name):
	inventory[item_name] = true
	
func give_away_item(item_name):
	inventory[item_name] = false

func learn_fact(fact_name):
	facts[fact_name] = true
	
func learn_dialogue_fact(fact_name):
	dialogue_facts[fact_name] = true
	print(dialogue_facts[fact_name])
	
func set_dialogue_fact(fact_name,value):
	dialogue_facts[fact_name] = value
	print(dialogue_facts[fact_name])

func make_item_collectible(item_name):
	item_collectible[item_name] = true
	#print(item_collectible)

func complete_task(task_name):
	objectives[task_name] = true

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

func next_day():
	current_day += 1
	Dialogic.VAR.set_variable("cur_day", current_day)
	midpoint_reached = false
	get_tree().change_scene_to_file("res://Scenes/Lizzy's Room/Lizzy's Room.tscn")
	print("Cur day: ", current_day) #TODO:remove debug print

# ---------debug helper section-----------

# just for the tester button so it doesn't change scenes from the menu
func increase_day_tester():
	current_day += 1
	Dialogic.VAR.set_variable("cur_day", current_day)
	midpoint_reached = false
	print("Cur day (tester): ", current_day) #TODO:remove debug print
