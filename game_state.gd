extends Node

var current_day: int = 1

var inventory = {
	"sewing_kit": false,
	"belt": false,
	"allergy_meds": false,
	"pocket_shakespeare": false,
	"silver_nugget": false,
	"pocket_watch": false,
	"acceptance_letter": false
}

var notes = {
	"dress_ripped": false,
	"allergy": false
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
