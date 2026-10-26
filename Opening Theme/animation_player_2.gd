extends AnimationPlayer

@onready var animationplayer = $Node2D/Node2D/AnimationPlayer2
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	play_backwards("opening")
	speed_scale -2
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
