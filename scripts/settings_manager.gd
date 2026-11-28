extends Node

const SETTINGS_PATH = "user://settings.cfg"

const TEXT_SPEEDS = {
	"SLOW" = 0.025,
	"MEDIUM" = 0.01,
	"FAST" = 0.002
}

var	fullscreen = false
var text_speed = TEXT_SPEEDS["MEDIUM"] # slow = 2.0, medium = 1.0, fast = 0.5
var master_volume = 5 # Volume can be any number from 0-5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	load_settings()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func save_settings():
	var cfg = ConfigFile.new()
	cfg.set_value("display", "fullscreen", fullscreen)
	cfg.set_value("audio", "master_volume", master_volume)
	cfg.set_value("text", "speed", text_speed)
	cfg.save(SETTINGS_PATH)

func load_settings():
	var cfg = ConfigFile.new()
	var result = cfg.load(SETTINGS_PATH)
	if result == 0:
		fullscreen = cfg.get_value("display", "fullscreen", false)
		master_volume = cfg.get_value("audio", "master_volume", 1.0)
		text_speed = cfg.get_value("text", "speed", 1.0)
	apply_settings()

func volume_up():
	if(master_volume < 5):
		master_volume += 1

func volume_down():
	if(master_volume > 0):
		master_volume -= 1

# takes a text speed as either 5.0 (slow), 1.0 (medium), or 0.2 (fast)
func set_text_speed(speed: float):
	text_speed = speed

func apply_settings():
	apply_fullscreen(fullscreen)
	apply_volume(master_volume)
	ProjectSettings.set_setting("dialogic/text/letter_speed", text_speed)
	#print("text speed set to: ", ProjectSettings.get_setting("dialogic/text/letter_speed"))

func apply_fullscreen(is_fullscreen: bool):
	if(is_fullscreen):
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)

# linear_to_db converts a scale of 0 - 1.0 to decibals,
# vol is a value from 0-10
func apply_volume(vol: float):
	var bus = AudioServer.get_bus_index("Master")
	AudioServer.set_bus_volume_db(bus, linear_to_db(vol/5))

#
