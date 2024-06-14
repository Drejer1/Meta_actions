(define (problem ZTRAVEL-1-11)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	person8 - person
	person9 - person
	person10 - person
	person11 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	city6 - city
	city7 - city
	city8 - city
	city9 - city
	city10 - city
	city11 - city
	city12 - city
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(ataircraft plane1 city2)
	(fuel-level plane1 fl0)
	(atperson person1 city3)
	(atperson person2 city1)
	(atperson person3 city8)
	(atperson person4 city1)
	(atperson person5 city4)
	(atperson person6 city12)
	(atperson person7 city0)
	(atperson person8 city3)
	(atperson person9 city1)
	(atperson person10 city0)
	(atperson person11 city4)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(atperson person1 city0)
	(atperson person2 city12)
	(atperson person3 city1)
	(atperson person4 city3)
	(atperson person5 city4)
	(atperson person6 city5)
	(atperson person7 city9)
	(atperson person8 city4)
	(atperson person9 city2)
	(atperson person10 city9)
	(atperson person11 city0)
	))

)
