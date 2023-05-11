extends Node2D

@export var energy : int
@export var cost : int
var prod: int
var energy_init: int
var cost_init: int
@export var label_name: String
var num: int = 1
var plus: bool = true

@onready var Global = get_node("/root/Ui")
# Called when the node enters the scene tree for the first time.
func _ready():
	$ColorRect2/Label2.text = str(energy)
	$ColorRect2/Label3.text = str(cost)
	$ColorRect/Label.text = label_name
	Global.energy += energy
	Global.prod += cost
	
	energy_init = energy
	cost_init = cost
	
	
	$Button.visible = plus
	$ColorRect2/Total.visible = plus
	$ColorRect2/Num.visible = plus
	
	Global.update_ui()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	if num < 5:
		energy += energy_init
		print(energy)
		cost += cost_init
		num += 1
		$ColorRect2/Num.text = str(num)
		if num == 4:
			Global.full_farm = true
		_update()
		$Sprite2D.scale += Vector2(0.1,0.1)
		if num == 5:
			$Button.queue_free()
		
func _update():
	$ColorRect2/Label2.text = str(energy)
	$ColorRect2/Label3.text = str(cost)
	Global.energy += energy
	Global.prod += cost
	
	Global.update_ui()
