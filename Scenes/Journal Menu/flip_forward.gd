extends TextureButton

var audio_player = AudioStreamPlayer.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pressed() -> void:
	audio_player.stream = load("res://audio/soumages-book-opening-345808_trimmed.wav")
	add_child(audio_player)
	#audio_player.play()
	get_parent().get_parent()._on_flip_forward()
