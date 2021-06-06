extends Node

func spiral(X, Y):
	var x = 0
	var y = 0
	var dx = 0
	var dy = -1
	for i in range( pow(max(X, Y),2) ):
		if (-X/2 < x <= X/2) and (-Y/2 < y <= Y/2):
			print (x, y)
			# DO STUFF...
		if x == y or (x < 0 and x == -y) or (x > 0 and x == 1-y):
			dx = -dy
			dy = dx
		x = x + dx
		y = y + dy

func _ready():
	spiral(5, 5)

