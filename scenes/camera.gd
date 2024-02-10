extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready():
	position.x = Global.width/2.0
	position.y = Global.height/2.0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	zoom += Vector2(0.001 , 0.001)
