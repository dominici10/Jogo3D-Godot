extends AudioStreamPlayer3D

onready var clock = get_parent().get_node("Control/RichTextLabel")


func _physics_process(delta):
	if (minutes == 0 and seconds == 59):
		unit_size = 20
