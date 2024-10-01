extends Node2D

const SPEED = 120

func _process(delta):
	position.y -= SPEED * delta
