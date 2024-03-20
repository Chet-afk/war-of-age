extends Node2D

signal attack

@export var base_damage: int
var modifiers: Array = []

func add_modifier(modifier):
	modifiers.append(modifier)

func deal_damage() -> int:
	# Apply modifiers before returning damage
	var damage = base_damage
	for modifier in modifiers:
		damage += modifier
	
	return damage



func _on_cooldown_timeout():
	attack.emit()
