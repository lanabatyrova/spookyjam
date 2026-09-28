extends Node2D

@onready var bffs = $BFF_Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_items(GameState.inventory)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_items(items):
	bffs.visible = GameState.facts["j_BFFS"] && GameState.is_minigame == true
