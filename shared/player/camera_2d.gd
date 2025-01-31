extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x = move_toward(position.x,max(min($"../".velocity.x/100, 250),-250), delta * 100)
	if $"../".ground:
		position.y = move_toward(position.y, -250, delta * 50)
	else: 
		position.y = move_toward(position.y, 100, delta * 50)
	pass
