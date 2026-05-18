extends Node
class_name PlayerMover

func move(body: CharacterBody2D, direction: Vector2, speed: float) -> void:
	body.velocity = direction * speed
	body.move_and_slide()
