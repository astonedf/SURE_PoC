extends CanvasLayer

@export var energy: int = 0
@export var env: int = 0
@export var trust: int = 0

@export var money: int = 1000
@export var prod: int = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$ColorRect/Label/Energy.value = energy
	$ColorRect/Label2/Env.value = env
	$ColorRect/Label3/Trust.value = trust
	
	$ColorRect2/ColorRect/money.text = str(money - prod)
	$ColorRect2/ColorRect/budget.text = str(money)
	$ColorRect2/ColorRect/prod.text = str(prod)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
func update_ui():
	$ColorRect/Label/Energy.value = energy
	$ColorRect/Label2/Env.value = env
	$ColorRect/Label3/Trust.value = trust
	
	$ColorRect2/ColorRect/money.text = str(money - prod)
	$ColorRect2/ColorRect/budget.text = str(money)
	$ColorRect2/ColorRect/prod.text = "-" + str(prod)
