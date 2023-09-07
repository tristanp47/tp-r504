import fonctions as f
print("Hello, World!")
while True:
	v1 = int(input("nombre 1 : "))
	v2 = int(input("nombre 2 : "))
	f.puissance(v1,v2)
	car = v1 ** v2
	print(car)
