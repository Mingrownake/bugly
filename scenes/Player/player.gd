extends CharacterBody2D

@onready var player_input_reader: PlayerInputReader = $PlayerInputReader
@onready var player_mover: PlayerMover = $PlayerMover

@export var speed: float = 200.0

func _physics_process(delta: float) -> void:
	var direction = player_input_reader.get_direction()
	player_mover.move(self, direction, speed)
