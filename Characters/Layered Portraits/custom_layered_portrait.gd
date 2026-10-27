@tool
extends "res://addons/dialogic/Modules/LayeredPortrait/layered_portrait.gd"


@onready var animation = $Animated/Talking/AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node("Animated").hide()





func _on_talking_visibility_changed() -> void:
	
	var talking = $Animated/Talking
	var anim = $Animated/Talking/AnimationPlayer
	
	
## Called when this becomes the active speaker
func _highlight() -> void:
	get_node("Animated").show()
	animation.play("Talking")
	



## Called when this stops being the active speaker
func _unhighlight() -> void:
	get_node("Animated").hide()
	##get_node("Static").show()
