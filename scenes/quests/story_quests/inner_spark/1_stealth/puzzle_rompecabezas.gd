extends Node2D

signal solved

@export var grietas: Array[Area2D]
var ya_resuelto: bool = false

func _process(_delta: float) -> void:
	if ya_resuelto or grietas.size() == 0:
		return
		
	var rocas_en_su_lugar = 0
	
	for area in grietas:
		if not area:
			continue
			
		var tiene_roca = false
		var objetos_tocando = area.get_overlapping_bodies()
		
		for obj in objetos_tocando:
			if obj is RigidBody2D:
				tiene_roca = true
				break
				
		if tiene_roca:
			area.modulate = Color(0, 1, 0, 1)
			rocas_en_su_lugar += 1
		else:
			area.modulate = Color(1, 1, 1, 1)
			
	if rocas_en_su_lugar >= 3:
		ya_resuelto = true
		solved.emit()
