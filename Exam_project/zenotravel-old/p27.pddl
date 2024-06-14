(define (problem ZTRAVEL-2-9)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	person7 - person
	person8 - person
	person9 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	city6 - city
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(ataircraft plane1 city5)
	(fuel-level plane1 fl0)
	(ataircraft plane2 city0)
	(fuel-level plane2 fl0)
	(atperson person1 city6)
	(atperson person2 city5)
	(atperson person3 city3)
	(atperson person4 city2)
	(atperson person5 city0)
	(atperson person6 city1)
	(atperson person7 city5)
	(atperson person8 city5)
	(atperson person9 city2)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(atperson person1 city3)
	(atperson person2 city6)
	(atperson person3 city3)
	(atperson person5 city0)
	(atperson person6 city6)
	(atperson person7 city1)
	(atperson person8 city3)
	(atperson person9 city0)
	))

)
