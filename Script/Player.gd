extends KinematicBody

export var max_vel = 4
export var gravidade = 170
onready var animator = $Bulbasaur/AnimationPlayer
var velocidade =- Vector3.ZERO

func _ready():
	$CameraMov.set_as_toplevel(true)

func _physics_process(delta):
	var lt_camera_pos = $CameraMov.global_transform.origin
	var player_pos = global_transform.origin
	var nv_camera_pos = lerp(lt_camera_pos, player_pos, 0.2)
	$CameraMov.global_transform.origin = nv_camera_pos
	
	if Input.is_action_pressed("tras"):
		rotation_degrees.y = 0
		animator.play("Walk")
		#$CameraMov.rotation_degrees.y = 180
	elif Input.is_action_pressed("frente"):
		rotation_degrees.y = 180
		animator.play("Walk")
		#$CameraMov.rotation_degrees.y = 0
	elif Input.is_action_pressed("esquerda"):
		rotation_degrees.y = -90
		animator.play("Walk")
		#$CameraMov.rotation_degrees.y = 90
	elif Input.is_action_pressed("direita"):
		rotation_degrees.y = 90
		animator.play("Walk")
	else:
		animator.play("Default")
		#$CameraMov.rotation_degrees.y = -90
	var inser_vetor = get_input_vector()
	aplicar_movimento(inser_vetor)
	aplicar_gravidade(delta)
	velocidade = move_and_slide(velocidade, Vector3.UP)
	
func get_input_vector():
	var inser_vetor = Vector3.ZERO
	inser_vetor.x = Input.get_action_strength("direita") - Input.get_action_strength("esquerda")
	inser_vetor.z = Input.get_action_strength("tras") - Input.get_action_strength("frente")
	return inser_vetor.normalized()
	
func aplicar_movimento(inser_vector):
	velocidade.x = inser_vector.x * max_vel
	velocidade.z = inser_vector.z * max_vel
	
func aplicar_gravidade(delta):
	velocidade.y -= gravidade * delta


func _on_Area_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Cenas/QuitGame.tscn")
