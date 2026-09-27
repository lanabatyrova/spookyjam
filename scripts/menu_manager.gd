extends Node

var journal_instance: Control = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func open_journal():
	if journal_instance == null:
		var journal_scene = preload("res://Scenes/Journal Menu/JournalUI.tscn")
		journal_instance = journal_scene.instantiate()
		get_tree().root.add_child(journal_instance)

func close_journal():
	if journal_instance:
		journal_instance.queue_free()
		journal_instance = null
