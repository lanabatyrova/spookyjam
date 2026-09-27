extends Control

#@onready var settings = $Settings
#@onready var inventory = $Inventory
#@onready var contacts = $Contacts
#@onready var ladyM = $Lady_Page
#@onready var val = $Val_Page
#@onready var dagger = $Dagger_Page
#@onready var notes = $Notes
#
#
#var pages: Array[Control]
#var current_page: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	## Add any additional pages here in order
	#pages = [settings, inventory, contacts, val, ladyM, dagger, notes] 
	#pages = pages.filter(func(p): return p != null)
	##pages = [settings, inventory, contacts, juniper, noah, barb, val, ladyM, dagger, notes, beastiary] 
	#
	#show_page(current_page)
	pass

#func show_page(index: int):
	#for page in pages:
		#page.visible = false
	#
	## Show the active page
	#if index >= 0 and index < pages.size():
		#current_page = index
		#pages[index].visible = true
#
#func _on_flip_forward():
	#print("forward function called")
	#show_page(current_page + 1)
	#
#func _on_flip_backward():
	#print("back function called")
	#show_page(current_page - 1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
