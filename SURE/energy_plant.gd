extends Node2D

@export var energy : int
@export var cost : int
# Called when the node enters the scene tree for the first time.
func _ready():
	$ColorRect2/Label2.text = str(energy)
	$ColorRect2/Label3.text = str(cost)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_mouse_entered():
	$ColorRect2.visible = !$ColorRect2.visible


func _on_area_2d_mouse_exited():
	$ColorRect2.visible = !$ColorRect2.visible
