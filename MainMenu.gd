## Written by Andrew Poženel AKA SloDevTeak - .:VOID:. 2020 <-> 2021 ##


extends Control

onready var anim_pl = $Animations/AnimationPlayer

onready var a_text = $Menus/About/RichTextLabel

onready var m = $Menus
onready var a = $Menus/About
onready var gc = $Panel/GridContainer



func _ready() -> void:

	if OS.get_name() == "Android" or "iOS" or "HTML5" or "OSX" or "Server" or "UWP":
		VisualServer.texture_set_shrink_all_x2_on_set_data(true)

	elif OS.get_name() == "Windows" or "X11":
		VisualServer.texture_set_shrink_all_x2_on_set_data(false)



func _on_Exit_button_pressed() -> void:

	get_tree().quit()


func _on_RichTextLabel_meta_clicked(meta) -> void:

	OS.shell_open(str(meta))


func _on_back_button_pressed() -> void:

	gc.set_visible(true)
	m.set_visible(false)
	a.set_visible(false)


func _on_RichTextLabel_meta_hover_started(meta) -> void:

	anim_pl.play("text_spin1")
	anim_pl.play("back_button_dance1")


func _on_RichTextLabel_meta_hover_ended(meta) -> void:

	anim_pl.stop(true)




func _on_About_button_pressed() -> void:

	gc.set_visible(false)
	m.set_visible(true)
	a.set_visible(true)

