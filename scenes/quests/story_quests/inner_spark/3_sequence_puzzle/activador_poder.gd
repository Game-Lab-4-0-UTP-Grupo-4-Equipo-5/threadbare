extends Node

@onready var chispa = $"../Chispa02"

func _ready():
	if chispa:
		chispa.tree_exited.connect(_on_chispa_recogida)

func _on_chispa_recogida():
	GestorEmociones.alegria_desbloqueada = true
	print("¡Poder de Alegría guardado en el collar!")
