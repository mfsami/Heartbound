extends Node

var resetX = 523
var resetY = 200


#Mouse position
func _physics_process(delta):
	var pos = get_viewport().get_mouse_position()
	#print(str(pos.x) + ", " + str(pos.y))
	pass
