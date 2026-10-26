extends AnimationTree

@onready var animation = $AnimationPlayer2
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set("parameters/AnimationPlayer2TimeScale/scale", -1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
