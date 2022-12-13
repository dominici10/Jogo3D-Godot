extends Area

export (String, FILE, "QuitGame.tscn") var ABRIR_ARQUIVO = ""

func _on_ZonadeMorte_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene(ABRIR_ARQUIVO)
