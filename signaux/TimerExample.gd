extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
# warning-ignore:return_value_discarded
	$Timer.connect("timeout", self, "_on_Timer_timeout")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	# Note: the `$` operator is a shorthand for `get_node()`,
	# so `$Sprite` is equivalent to `get_node("Sprite")`.
	$Sprite.visible = !$Sprite.visible
