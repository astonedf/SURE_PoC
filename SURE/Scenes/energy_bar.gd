extends Label

var energyStyleLow = preload("res://Scenes/energy_bar.tres")
var energyStyle = preload("res://Scenes/energybar_norm.tres")
@onready var Global = get_node("/root/Ui")

var energy_value: int = 0
var energy_min: int = 500
# Called when the node enters the scene tree for the first time.
func _ready():
	$Energy.value = energy_value
	energy_value = Global.energy
	if energy_value < energy_min:
		print("low")
		$Energy.set("theme_override_styles/fill", energyStyleLow)
	else:
		$Energy.set("theme_override_styles/fill", energyStyle)
		print("normal")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Energy.value = Global.energy
	

func _on_energy_value_changed(value):
	if value < energy_min:
		$Energy.set("theme_override_styles/fill", energyStyleLow)
	else:
		$Energy.set("theme_override_styles/fill", energyStyle)
