extends Area

onready var enemy = get_parent().get_node("Enemy")

func _on_TpEnemyEsq_body_entered(body):
	if body.name == "Enemy":
		enemy.translation.x = 5.1
