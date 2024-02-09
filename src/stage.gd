extends Node2D

var w = Global.width
var h = Global.height

func _init():
	add_child(Geometry.rectangle("Soil", w / 2.0, h - 75, w, 150, Color(0.7, 0.7, 0.7)))
	add_child(Geometry.rectangle("Roof", w / 2.0, 25, w, 50, Color(0.7, 0.7, 0.7)))
	add_child(Geometry.circle("Player", w / 4.0, h / 2.0, 200, 5, Color(0.9, 0.9, 0.9)))
	add_child(Geometry.circle("Player", w * 3.0 / 4.0, h / 2.0, 200, 5, Color(0.9, 0.9, 0.9), false))
