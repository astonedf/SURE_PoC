extends Control

var parties = [
	"Social-democratic Party",
	"Green Party",
	"Green Liberal Party",
	"Independant/No Party Affiliation",
	"Christian-democratic Party",
	"Liberal Party",
	"Conservative Party",
]

var def = [
	"State-centered, progressive, Strong environmental protection",
	"State-centered, progressive, Strong environmental protection",
	"Mix, progressive, Strong environmental protection",
	"No positions",
	"Mix, Conservative, Status Quo",
	"Free Market, Progressive, Status Quo",
	"Free Market, Conservative, Status Quo",
	
]
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_h_slider_value_changed(value):
	$Party.text = parties[value]
	$Def.text = def[value]


func _on_button_pressed():
	pass # Replace with function body.
