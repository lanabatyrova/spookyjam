extends Node

# File created now in case we want to expand later,
# though at the moment it's only used twice. Naming
# convention: requirements_[day#][A for morning/B for evening]

# requirements to reach the midpoint of day 1
var requirements_1A = {
	"hallway_dialog" = false,
	"library_dialog" = false
}

var requirements_1B = {
	"diner_dialog" = false
}

var requirements_3A = {
	"hallway_dialog" = false,
	"library_dialog" = false
}

var requirements_7A = {
	"noah_dialog" = false,
	"barb_dialog" = false,
	"valerie_dialog" = false,
	"lady_dialog" = false,
	"dagger_dialog" = false
}

var requirement_sets = {
	"1A" = requirements_1A,
	"3A" = requirements_3A,
	"7A" = requirements_7A
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func is_requirement_met(name):
	for req in requirement_sets[name].values():
		if !req:
			return false
	return true

func complete_requirement(day_name, task_name):
	print("Called!")
	print(day_name, task_name)
	requirement_sets[day_name][task_name] = true
	print(requirement_sets[day_name])
