extends Area

onready var player = get_parent().get_node("Player")

func _on_Tp4_body_entered(body):
	if body.name == "Player":
		player.translation.x = -7.923
		player.translation.z = 9.626
