extends Node

var score = 0
var current_level = 1
var level_path = "res://scenes/levels/"
@onready var score_label = $ScoreLabel

func add_point():
	score += 1
	score_label.text = str(score)

func next_level():
	current_level += 1
	var full_path = level_path + "level" + str(current_level) + ".tscn"
	get_tree().change_scene_to_file(full_path)
	print("Player entered next level")
