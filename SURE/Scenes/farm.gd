extends Node2D

@export var energy : int
@export var build : int
var prod: int
var energy_init: int
var build_init: int
var prod_init:int
@export var label_name: String
var num: int = 1
var plus: bool = true

@onready var Global = get_node("/root/Ui")
# Called when the node enters the scene tree for the first time.
func _ready():
	$ColorRect2/Label2.text = str(energy)
	$ColorRect2/Label3.text = str(build)
	$ColorRect/Label.text = label_name
	Global.energy += energy
	Global.build += build
	
	energy_init = energy
	build_init = build
	
	
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
		build += build_init
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
	$ColorRect2/Label3.text = str(prod)
	Global.energy += energy_init
	Global.prod += prod_init
	Global.build += build_init
	
	Global.update_ui()
