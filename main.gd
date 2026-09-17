extends Node2D

@onready var status: Label = $Status

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed and event.keycode == KEY_SPACE:
		status.text = "JUMP!"
		await get_tree().create_timer(0.35).timeout
		status.text = "READY"
