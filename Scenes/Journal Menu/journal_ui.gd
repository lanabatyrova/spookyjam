extends Control

@onready var closeable = $CanvasLayer/CloseButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_state(GameState.is_minigame)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_state(minigame):
	print(minigame)
	closeable.visible = !minigame
	
