extends TextureButton

var audio_player = AudioStreamPlayer.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	audio_player.stream = load("res://audio/Map Opening.mp3")
	add_child(audio_player)
	audio_player.play()
	MenuManager.open_map()
