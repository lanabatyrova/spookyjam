extends Node2D

@onready var anim = $Node2D/Node2D/AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	anim.play_backwards("Opening_reverse") 
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
