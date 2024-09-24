extends StaticBody2D

signal door_opened

var keytaken = false
var in_door_zone = false


func _on_Area2D_body_entered(body: PhysicsBody2D):
	if body is Player:
		if keytaken == false:
			keytaken = true
			$Sprite.queue_free()

func _process(_delta):
	if keytaken == true:
		if in_door_zone == true:
			if Input.is_action_just_pressed("ui_accept"):
				print("door_opened")
				emit_signal("door_opened")