extends Control

var color = [0.0,0.0,0.0]
var speed = 1

var min_c = 0
var max_c = 50

var bg_style = StyleBoxFlat.new()

func _ready():
	randomize()
	$Panel.set('custom_styles/panel', bg_style)

func _process(delta):
	var x = int(rand_range(0, 3))
	color[x] = clamp(color[x]+rand_range(-speed, speed+1), min_c, max_c)
	
	bg_style.set_bg_color(Color(color[0]/255.0, color[1]/255.0, color[2]/255.0))



func _on_BtQuit_pressed():
	get_tree().quit()


func _on_BtHelp_pressed():
	get_tree().change_scene("res://menus/help/MainHelp.tscn")
