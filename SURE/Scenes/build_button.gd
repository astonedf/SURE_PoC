extends Button

@export var button_list: Array = []
@onready var Global = get_node("/root/Ui")
@onready var farm = preload("res://Scenes/farm.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	for item in button_list:
		var button = Button.new()
		button.text = item[0]
		#button.pressed.connect(button, _on_button_pressed)
		button.pressed.connect(_on_button_pressed.bind(item[1]))




		$Control.add_child(button)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	$Control.visible = !$Control.visible

func _on_button_pressed(price):
	print(price)
	Global.prod += price
	Global.update_ui()
	var instance = farm.instantiate()
	instance.global_position = global_position
	get_parent().add_child(instance)
	queue_free()
