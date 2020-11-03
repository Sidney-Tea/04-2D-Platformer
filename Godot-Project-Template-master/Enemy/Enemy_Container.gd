extends Node2D

onready var enemy_ground = load("res://Enemy/Enemy_Ground.tscn")


func spawn (e_type,attr, p):
	var enemy = null
	if e_type == "enemy_ground":
		enemy = enemy_ground.instance()
	for a in attr:
		enemy[a] = attr[a]
	enemy.position = p
	add_child(enemy)
