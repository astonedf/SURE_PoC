extends CanvasLayer

@export var energy: int = 0
@export var env: int = 0
@export var trust: int = 0

@export var budget: int = 1000
var money: int
@export var prod: int = 0
var build: int = 0


var full_farm: bool = false
# Called when the node enters the scene tree for the first time.
func _ready():
	$ColorRect/EnergyBar.energy_value = energy
	$ColorRect/Label2/Env.value = env
	$ColorRect/Label3/Trust.value = trust
	
	money = budget - prod
	
	$ColorRect2/ColorRect2/money.text = str(money)
	$ColorRect2/ColorRect/budget.text = str(budget)
	$ColorRect2/ColorRect/prod.text = str(prod)
	$ColorRect2/ColorRect/Build.text = str(prod)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
func update_ui():
	$ColorRect/EnergyBar.energy_value = energy
	
	$ColorRect/Label2/Env.value = env
	$ColorRect/Label3/Trust.value = trust
	
	money = budget - prod - build
	
	$ColorRect2/ColorRect2/money.text = str(money)
	$ColorRect2/ColorRect/budget.text = str(budget)
	$ColorRect2/ColorRect/prod.text = "-" + str(prod)
	$ColorRect2/ColorRect/Build.text = "-" + str(build)
	
	if full_farm:
		$Bubble.visible = true


func _on_label_pressed():
	$Shock.visible = true


func _on_energy_bar_reached():
	$ColorRect/Next.visible = true


func _on_money_ui_pressed():
	$ColorRect2/ColorRect.visible = !$ColorRect2/ColorRect.visible
