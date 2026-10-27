extends Node2D

@onready var juniper = $JuniperButton
@onready var barb = $BarbButton
@onready var noah = $NoahButton
@onready var letter = $AcceptanceLetter
@onready var evening = $HallwayNight


var current_day: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	current_day = GameState.current_day
	update_day(current_day)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func update_day(day: int):
	juniper.visible = day in [1,2,3,4] && !GameState.midpoint_reached
	barb.visible = day in [1,2] && !GameState.midpoint_reached || day in [3]
	noah.visible = day in [1,2,3] && !GameState.midpoint_reached
	letter.visible = day in [5] && !GameState.inventory["acceptance_letter"]
	evening.visible = GameState.midpoint_reached


func _on_lizzys_locker_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Extras/Lizzy's Locker.tscn")


func _on_basement_pressed() -> void:
	pass # Replace with function body.


func _on_upstairs_pressed() -> void:
	pass # Replace with function body.


func _on_outside_pressed() -> void:
	pass # Replace with function body.
