extends Button

@export var button_list: Array = []
@export var path: String = ""
@export var poll: bool = true

var build_cost: int = 0

@onready var Global = get_node("/root/Ui")
#@onready var farm = preload("res://Scenes/farm.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	for item in button_list:
		var button = Button.new()
		button.text = item[0]
		#button.pressed.connect(button, _on_button_pressed)
		button.pressed.connect(_on_button_pressed.bind(item))

	
		

		$Control.add_child(button)
		
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	$Control.visible = !$Control.visible

func _on_button_pressed(button):
	if Global.money >= button[1]:
		print(button)
		#Global.build += button[1]
		#Global.energy = button[2]
		Global.update_ui()
		var scene = load("res://Scenes/"+path+".tscn")
		print(scene)
		var instance = scene.instantiate()
		instance.global_position = global_position
		print(global_position)
		if path == "farm":
			print(button[0])
			instance.label_name = str(button[0])
			instance.energy = button[2]
			instance.prod = button[3]
			instance.build = button[1]
			#instance.poll = poll
			get_parent().add_child(instance)
			queue_free()
		if path == "build_process":
			print(button[0])
			instance.label_name = str(button[0])
			#instance.energy = button[2]
			#instance.cost = button[1]
			#instance.plus = plus
			get_parent().add_child(instance)
			queue_free()
	
		if path == "energy_plant":
			instance.label_name = str(button[0])
			instance.energy = button[2]
			instance.prod = button[3]
			instance.build = button[1]
			instance.poll = poll
			get_parent().add_child(instance)
			queue_free()
