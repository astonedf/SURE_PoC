extends Control

@export var label1: String
@export var label2: String
@export var label3: String
#@export var varName: String
@export var max: int

@onready var Global = get_node("/root/Ui")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Control/VBoxContainer/Label.text = label1
	$Control/VBoxContainer/Label2.text = label2
	$Control/VBoxContainer/Label3.text = label3

	
	
	Global.connect("updated", set_nums)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_nums():
	$Control/VBoxContainer2/Label4.text = str(Global.energy) + " / " + str(max)


func _on_button_pressed():
	$Control.visible = !$Control.visible
