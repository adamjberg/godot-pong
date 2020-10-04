extends Node2D


var size = 16
var halfSize = size / 2
var direction = -1

var speed = Vector2(300, 300)

func spawn():
	position.x = (1024 - size / 2) / 2
	position.y = 300

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if position.y <= halfSize or position.y > 600 - halfSize:
		speed.y *= -1

	position += direction * speed * delta
	
	if position.x > 1024:
		spawn()
	if position.x < 0:
		spawn()


func _on_Area2D_area_entered(area):
	speed *= -1
