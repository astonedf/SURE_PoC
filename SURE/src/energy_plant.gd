extends Node2D

@export var energy : int
@export var cost : int
@export var poll: bool = false
@export var poll_value: int = 10

@onready var Global = get_node("/root/Ui")
# Called when the node enters the scene tree for the first time.
func _ready():
	$ColorRect2/Label2.text = str(energy)
	$ColorRect2/Label3.text = str(cost)
	Global.energy += energy
	Global.prod += cost
	if poll:
		Global.env -= poll_value
	Global.update_ui()
	
	if poll:
		$ColorRect2/Poll.visible = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_mouse_entered():
	pass


func _on_area_2d_mouse_exited():
	pass


func _on_switch_toggled(button_pressed):
	if button_pressed:
		Global.energy += energy
		Global.prod += cost
		if poll:
			Global.env -= poll_value
		Global.update_ui()
	else:
		Global.energy -= energy
		Global.prod -= cost
		if poll:
			Global.env += poll_value
		Global.update_ui()
