extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _ready():
	var btnDoNot = Button.new()
	btnDoNot.text = "Do not click me"
	btnDoNot.connect("pressed", self, "_btnDoNot_pressed")
	add_child(btnDoNot)

# Called when the node enters the scene tree for the first time.

func _btnDoNot_pressed():
	var outputarray = ["Hello", "Stop that", "Hey!", "Why would you do this :("]
	outputarray.shuffle()
	$lblText.set_text(outputarray[0])

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
