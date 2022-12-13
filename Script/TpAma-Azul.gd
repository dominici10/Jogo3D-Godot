extends Area

onready var player = get_parent().get_node("Player")

func _on_TpAmaAzul_body_entered(body):
	if body.name == "Player":
		player.translation.x = -8.33
		player.translation.z = -6.865
