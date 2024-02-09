class_name GUI
extends Control

var buttons_container
var pause_menu
var btn_shot
var btn_pause

func _ready():
	buttons_container = get_node("Unpause/ButtonsContainer")
	btn_shot = get_node("Unpause/ButtonsContainer/BtnShot")
	btn_pause = get_node("BtnPause")
	pause_menu = get_node("Pause")
	pause_menu.visible = false

func _on_btn_pause_pressed() -> void:
	get_tree().paused = not get_tree().paused
	if get_tree().paused:
		buttons_container.visible = false
		pause_menu.visible = true
		btn_pause.text = "Continue"
	else:
		pause_menu.visible = false
		buttons_container.visible = true
		btn_pause.text = "Pause"
		
func _on_btn_leave_stage_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/MainMenu.tscn")
	
