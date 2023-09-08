import pytest
import fonctions as f

def test_1():
	assert f.puissance(2,3) == 8
	assert f.puissance(2,2) == 4
	
def test_2():
	assert f.puissance(2,-6) == 0.015625
	assert f.puissance(-3,2) == 9
def test_3():
	assert f.puissance(2,0) == 1
	assert f.puissance(2,-2) == 1/2**2
	assert f.puissance(-2,3) == -8
	
