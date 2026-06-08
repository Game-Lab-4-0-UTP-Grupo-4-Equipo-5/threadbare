extends Control

@onready var frag_alegria = $FragAlegria
@onready var frag_tristeza = $FragTristeza
@onready var frag_ira = $FragIra
@onready var frag_miedo = $FragMiedo

const COLOR_ALEGRIA = Color(1.0, 0.9, 0.2)
const COLOR_TRISTEZA = Color(0.2, 0.4, 1.0)
const COLOR_IRA = Color(0.9, 0.1, 0.1)
const COLOR_MIEDO = Color(0.6, 0.2, 0.8)

const COLOR_APAGADO = Color(0.3, 0.3, 0.3, 0.5)

func _ready() -> void:
	_apagar_todos()
	actualizar_amuleto()

func _apagar_todos() -> void:
	frag_alegria.modulate = COLOR_APAGADO
	frag_tristeza.modulate = COLOR_APAGADO
	frag_ira.modulate = COLOR_APAGADO
	frag_miedo.modulate = COLOR_APAGADO

func actualizar_amuleto() -> void:
	if GameState.global.get_joy_fragments_count() >= 2:
		frag_alegria.modulate = COLOR_ALEGRIA
	else:
		frag_alegria.modulate = COLOR_APAGADO

	if GameState.global.has_sadness_fragment():
		frag_tristeza.modulate = COLOR_TRISTEZA
	else:
		frag_tristeza.modulate = COLOR_APAGADO
