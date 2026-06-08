extends Node

signal emocion_actualizada

var alegria_desbloqueada: bool = false:
	set(value):
		alegria_desbloqueada = value
		emocion_actualizada.emit()
