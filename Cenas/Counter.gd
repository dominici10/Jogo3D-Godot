extends Label

var itens = 0
export (String, FILE, "Victory.tscn") var ABRIR_ARQUIVO = ""

func _ready():
	text = String(itens)
	_exit_tree()

func _on_Pokebola_ItemCollected():
	itens = itens +1
	_ready()


func _on_BMO_ItemCollected():
	itens = itens +1
	_ready()

func _on_MarioCap_ItemCollected():
	itens = itens +1
	_ready()

func _on_PortalGun_ItemCollected():
	itens = itens +1
	_ready()

func _on_CapShield_ItemCollected():
	itens = itens +1
	_ready()
	
func _on_Omnitrix_ItemCollected():
	itens = itens +1
	_ready()

func _on_Towelie_ItemCollected():
	itens = itens +1
	_ready()

func _on_Batarang_ItemCollected():
	itens = itens +1
	_ready()
	
func _exit_tree():
	if itens == 8:
		get_tree().change_scene(ABRIR_ARQUIVO)






