@tool
extends "res://addons/dialogic/Modules/LayeredPortrait/layered_portrait.gd"

@onready var _animated_sprite = $Animated/Talking/AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(_animated_sprite)





func _on_talking_visibility_changed() -> void:
	
	var talking = $Animated/Talking
	var anim = $Animated/Talking/AnimationPlayer
	
	
