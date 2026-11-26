extends Label

@onready var textBox = $"RichTextLabel"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	
	
	#$Label.show("Daily_Specials")
	#show_text_input("Daily_Specials")
	#Dialogic.VAR.get_variable("Daily_Specials")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func show_text_input ( text: String = "", default: String = "", placeholder: String = "", allow_empty: bool = false ):
	pass
	
func get_variable ( variable_path: String, default: Variant = null, no_warning: bool = false )-> void:
	pass
	
	


func _on_texture_button_pressed() -> void:
	print(Dialogic.VAR.Daily_Specials)
