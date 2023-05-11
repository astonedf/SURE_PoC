extends CanvasLayer

var bad: bool
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_visibility_changed():
	$ColorRect/Result/EnergyBar.energy_min = 550
	print($ColorRect/Result/EnergyBar.energy_value)
	if $ColorRect/Result/EnergyBar.energy_value < 550:

		$ColorRect/Result.text = "You cannot provide enough energy for your citizens!"
		bad = true
	else:
		bad = false
		$ColorRect/Result.text = "You had enough energy surplus to get through those difficult winters."
	

func _on_continue_pressed():
	if bad:
		$ColorRect/Result.queue_free()
		$ColorRect/Text/Control.visible = true
