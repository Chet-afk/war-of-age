extends Node2D

signal dead

# exported so that max can be set without init
@export var max_health: int
var cur_health: int

# Set the current health to whatever max health is when instantiated
func _init():
	cur_health = max_health

func take_damage(dmg: int):
	cur_health -= dmg
	if cur_health <= 0:
		dead.emit()

func heal(recover: int):
	cur_health += recover
	if cur_health >= max_health:
		cur_health = max_health
