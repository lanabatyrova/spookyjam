extends Control

var pages: Array
var current_page

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Add any additional pages here in order
	pages = get_children()	
	show_page(0)
	#pass

func show_page(index: int):
	for page in pages:
		page.visible = false
	# Show the active page
	if index >= 0 and index < pages.size():
		current_page = index
		pages[index].visible = true

func get_index_from_name(name):
	for i in range(pages.size()):
		if pages[i].name == name:
			return i
	return -1
	

func jump_to_page(name):
	var nextPage = get_index_from_name(name)
	if nextPage == -1:
		print("No page with that name found")
		return
	current_page = nextPage
	show_page(current_page)

func _on_flip_forward():
	show_page(current_page + 1)
	
func _on_flip_backward():
	show_page(current_page - 1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
