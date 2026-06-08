extends TextureRect

func _ready() -> void:
	GestorEmociones.emocion_actualizada.connect(_on_emocion_actualizada)
	_actualizar_visual()

func _on_emocion_actualizada() -> void:
	_actualizar_visual()

func _actualizar_visual() -> void:
	if GestorEmociones.alegria_desbloqueada:
		modulate = Color(1, 1, 1, 1)
	else:
		modulate = Color(0.3, 0.3, 0.3, 1)
