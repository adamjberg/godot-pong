extends Node2D


var speed = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_up"):
		position.y -= speed * delta
	if Input.is_action_pressed("ui_down"):
		position.y += speed * delta
	
	if position.y < 0:
		position.y = 0
		
	var maxHeight = 600 - 64
	if position.y > maxHeight:
		position.y = maxHeight


func _on_Area2D_area_entered(area):
	print("Entered")
