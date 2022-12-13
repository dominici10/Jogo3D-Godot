extends Area

onready var player = get_parent().get_node("Player")

func _on_Tp7_body_entered(body):
	if body.name == "Player":
		player.translation.x = 1.193
		player.translation.z = 12.001
