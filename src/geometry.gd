extends Node

func rectangle(identifier: String, position_x: float, position_y: float, width: float, height: float, color: Color) -> Area2D:
	var v1 = Vector2()
	var v2 = Vector2()
	var v3 = Vector2()
	var v4 = Vector2()
	v1.x = position_x - width / 2
	v1.y = position_y - height / 2
	v2.x = position_x + width / 2
	v2.y = position_y - height / 2
	v3.x = position_x + width / 2
	v3.y = position_y + height / 2
	v4.x = position_x - width / 2
	v4.y = position_y + height / 2
	
	var vertices = PackedVector2Array()
	vertices.append(v1)
	vertices.append(v2)
	vertices.append(v3)
	vertices.append(v4)
	
	var area2d = Area2D.new()
	var collisionpolygon2d = CollisionPolygon2D.new()
	var polygon2d = Polygon2D.new()
	collisionpolygon2d.polygon = vertices
	polygon2d.polygon = vertices
	polygon2d.color = color
	area2d.add_child(collisionpolygon2d)
	area2d.add_child(polygon2d)
	area2d.set_name(identifier)
	return area2d

func circle(identifier: String, position_x: float, position_y: float, radius: float, segments: int, color: Color, antialias: bool = true) -> Area2D:
	var vertices = PackedVector2Array()
	for i in range(segments):
		var increment = (TAU * i) / segments
		var vertex = Vector2(
					cos(increment) * radius + position_x, 
					sin(increment) * radius + position_y)
		vertices.append(vertex)	
	
	var area2d = Area2D.new()
	var collisionpolygon2d = CollisionPolygon2D.new()
	var polygon2d = Polygon2D.new()
	collisionpolygon2d.polygon = vertices
	polygon2d.polygon = vertices
	polygon2d.color = color
	polygon2d.antialiased = antialias
	area2d.add_child(collisionpolygon2d)
	area2d.add_child(polygon2d)
	area2d.set_name(identifier)
	return area2d
