@tool
extends DialogicPortrait


@onready var _animated_sprite = $Barb1/AnimatedSprite2D/AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(_animated_sprite)
	_animated_sprite.play("Talking")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
