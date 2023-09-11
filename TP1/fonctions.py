def puissance(a,b):
	if not type(a) and type(b) is int:
		raise TypeError("uniquement des valeurs numérique")
	if a == 0 and b < 0:
		raise TypeError("pas de valeur")
	res = 1
	for i in range(abs(b)):
		res *= a
	if b < 0 :
		return 1 / res
	else:
		return res
