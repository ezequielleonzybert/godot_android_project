extends Control

func _ready():
	var buttons_container = get_node("ButtonsContainer")
	var scale_factor = Global.dpi / 150.0 * Global.dpi / Global.dpi * 0.8
	var btn_newgame = get_node("ButtonsContainer/BtnNewGame")
	var btn_stage_selector = get_node("ButtonsContainer/BtnStageSelector")
	var btn_exit = get_node("ButtonsContainer/BtnExit")
	
	buttons_container.size = Vector2(
			Global.width * 0.3 * scale_factor, 
			Global.height * 0.4 * scale_factor
	)
	buttons_container.position = Vector2(
			 Global.width * 0.5 - buttons_container.size.x/2,
			 Global.height * 0.5 - buttons_container.size.y/2
	)
	buttons_container.set("theme_override_constants/separation", Global.height * 0.05)
	btn_newgame.set("theme_override_font_sizes/font_size",15.0 * Global.dpi / 96.0)
	btn_stage_selector.set("theme_override_font_sizes/font_size",15.0 * Global.dpi / 96.0)
	btn_exit.set("theme_override_font_sizes/font_size",15.0 * Global.dpi / 96.0)
	
	#show_screen_properties()
	#print(Global.dpi)
	#buttons.anchor_left =  0.3 * Global.dpi
	#buttons.anchor_right = 1 - 0.3 * Global.dpi
	#buttons.anchor_top = 0.3 * Global.dpi
	#buttons.anchor_bottom = 1 - 0.3 * Global.dpi

func show_screen_properties():
	get_node("Label").text = (
		"device screen: " + str(DisplayServer.screen_get_size()) + "\n" +
		"game window: " +str(DisplayServer.screen_get_size()) + "\n" +
		"dpi: " +str(Global.dpi)
	)

func _on_btn_exit_pressed() -> void:
	get_tree().quit()

func _on_btn_new_game_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Stage01.tscn")
