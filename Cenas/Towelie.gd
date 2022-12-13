extends Area

signal ItemCollected

onready var player = get_parent().get_node("Player")
	
func _on_Towelie_body_entered(body):
	if body.name == "Player":
		$Timer.start()

func _on_Timer_timeout():
	emit_signal("ItemCollected")
	queue_free()


