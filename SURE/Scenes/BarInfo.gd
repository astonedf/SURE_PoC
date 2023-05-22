extends Control

@export var label1: String
@export var label2: String
@export var label3: String
@onready var Global = get_node("/root/Ui")

# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/Label.text = label1
	$VBoxContainer/Label2.text = label2
	$VBoxContainer/Label3.text = label3

	
	
	Global.connect("updated", set_nums)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_nums():
	$VBoxContainer2/Label4.text = str(Global.energy) + " / " + str(1000)
