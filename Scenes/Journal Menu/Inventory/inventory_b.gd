extends Node2D

@onready var meds = $AllergyMeds
@onready var silver = $SilverNugget
@onready var watch = $PocketWatch
@onready var sewing = $SewingKit
@onready var belt = $Belt
@onready var shakespeare = $Shakespeare
@onready var letter = $AcceptanceLetter

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_items(GameState.inventory)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func update_items(items):
	meds.visible = items["allergy_meds"]
	silver.visible = items["silver_nugget"]
	watch.visible = items["pocket_watch"]
	sewing.visible = items["sewing_kit"]
	belt.visible = items["belt"]
	shakespeare.visible = items["pocket_shakespeare"]
	letter.visible = items["acceptance_letter"]
