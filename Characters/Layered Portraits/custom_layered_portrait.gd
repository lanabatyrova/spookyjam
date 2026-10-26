@tool
extends "res://addons/dialogic/Modules/LayeredPortrait/layered_portrait.gd"

@onready var _animated_sprite = $Group1/AnimatedSprite2D/AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(_animated_sprite)





func _on_talking_visibility_changed() -> void:
	
	var talking = $Animation/Talking
	var anim = $Animation/Talking/AnimationPlayer
	
	
