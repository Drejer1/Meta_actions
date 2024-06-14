(define (problem ZTRAVEL-1-8)
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
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(ataircraft plane1 city0)
	(fuel-level plane1 fl0)
	(atperson person1 city5)
	(atperson person2 city8)
	(atperson person3 city6)
	(atperson person4 city4)
	(atperson person5 city0)
	(atperson person6 city9)
	(atperson person7 city9)
	(atperson person8 city3)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(atperson person1 city2)
	(atperson person2 city6)
	(atperson person3 city6)
	(atperson person4 city9)
	(atperson person5 city2)
	(atperson person6 city8)
	(atperson person7 city2)
	(atperson person8 city4)
	))

)
