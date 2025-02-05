extends Area2D

@onready var game_manager: Node = %GameManager
@onready var audio_player: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _on_body_entered(body: Node2D) -> void:
	game_manager.add_point()
	audio_player.reparent(get_tree().current_scene)
	audio_player.play()
	queue_free()
