extends CanvasLayer

# Each index corresponds to the Resolutions list
const RESOLUTIONS = [Vector2i(1280, 720),
					Vector2i(1920, 1080)]


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_sound_level_value_changed(value):
	# Update the shown percent and the fill of the sound bar
	$Sound/SoundPercent.set_text(str($Sound/SoundBar/SoundLevel.value) + "%")
	$Sound/SoundBar.set_value($Sound/SoundBar/SoundLevel.value)
	#TODO Either make a new function, or add code here to 
	# change the volume of all audio
	
	# Also, did not use line edit or spinbox to allow direct adjustment since
	# kinda annoying to deal with



func _on_option_button_item_selected(index):
	get_window().size = RESOLUTIONS[index]
