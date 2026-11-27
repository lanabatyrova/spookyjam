extends Node2D

@onready var bffs = $BFF_Button
@onready var vol1 = $Vol1
@onready var vol2 = $Vol2
@onready var vol3 = $Vol3
@onready var vol4 = $Vol4
@onready var vol5 = $Vol5
@onready var vol_up_button = $VolumeUp
@onready var vol_down_button = $VolumeDown
@onready var slow_text_button = $SlowSelect
@onready var medium_text_button = $MediumSelect
@onready var fast_text_button = $FastSelect
@onready var fullscreen_turn_on = $FullscreenTurnOn
@onready var fullscreen_turn_off = $FullscreenTurnOff

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_nodes()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_nodes():
	bffs.visible = GameState.facts["j_bffs"] && GameState.is_minigame == true
	vol1.visible = SettingsManager.master_volume == 1
	vol2.visible = SettingsManager.master_volume == 2
	vol3.visible = SettingsManager.master_volume == 3
	vol4.visible = SettingsManager.master_volume == 4
	vol5.visible = SettingsManager.master_volume == 5
	vol_up_button.visible = SettingsManager.master_volume < 5
	vol_down_button.visible = SettingsManager.master_volume > 0
	slow_text_button.disabled = SettingsManager.text_speed == SettingsManager.TEXT_SPEEDS["SLOW"]
	medium_text_button.disabled = SettingsManager.text_speed == SettingsManager.TEXT_SPEEDS["MEDIUM"]
	fast_text_button.disabled = SettingsManager.text_speed == SettingsManager.TEXT_SPEEDS["FAST"]
	fullscreen_turn_on.visible = !SettingsManager.fullscreen
	fullscreen_turn_off.visible = SettingsManager.fullscreen


func _on_street_names_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Transition Locations/Street Names.tscn")
