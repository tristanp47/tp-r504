def puissance(a,b):
	if not type(a) and type(b) is int:
		raise TypeError("uniquement des valeurs numérique")
	return a**b
