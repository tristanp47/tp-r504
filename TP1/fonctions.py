def puissance(a,b):
	if not type(a) is int:
		raise TypeError("uniquement des valeurs numérique")
	return a**b
puissance("azdazd",4)
