extends RichTextLabel

onready var Counter = get_parent().get_node("Counter")


export (String, FILE, "QuitGame.tscn") var ABRIR_ARQUIVO = ""
var minutes = 3
var seconds = 0

func _process(delta):
	if seconds == 0 and minutes != 0:
		minutes -= 1
		seconds = 59
		
		
	if (minutes == 0 and seconds == 59):
		$Theme.volume_db = 15
		
	if (minutes == 0 and seconds == 0) and Counter.itens != 5:
		get_tree().change_scene(ABRIR_ARQUIVO)
	
	
	set_text(str(minutes)+":"+str(seconds))

func _on_Timer2_timeout():
	seconds -= 1
