extends Node2D

var progress = 0
var speed = 20
var progress_text = "0%"
var progress_circle_pos_x = 0

onready var Bar_Node = get_node("Bar")
onready var Circle_Node = get_node("Circle")
onready var Progress_Node = get_node("Circle/Progress")

func _ready():
	set_fixed_process(true)
	pass

func _fixed_process(delta):
	if(progress <= 100):
		progress += delta * speed
		Bar_Node.set_value(progress)
		progress_circle_pos_x = (progress * 2.5) - 12
		Progress_Node.set_text(str(int(progress)) + "%")
		Circle_Node.set_pos(Vector2(progress_circle_pos_x, Circle_Node.get_pos().y))
		
