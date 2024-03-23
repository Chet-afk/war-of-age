extends Area2D
class_name Hitbox
@export var hp: HealthComponent


func hit(damage: int):
	hp.take_damage(damage)
