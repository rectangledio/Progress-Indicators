extends Node2D

var progress = 0
var speed = 20
onready var progress_node = get_node("TextureProgress")
func _ready():
	set_fixed_process(true)
	pass

func _fixed_process(delta):
	progress += delta * speed
	if(progress >= 100):
		progress = 0
	
	progress_node.set_value(int(progress))