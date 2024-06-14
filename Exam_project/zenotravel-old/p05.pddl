(define (problem ZTRAVEL-5-10)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	plane5 - aircraft
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
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	city4 - city
	city5 - city
	city6 - city
	city7 - city
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
	(ataircraft plane2 city3)
	(fuel-level plane2 fl0)
	(ataircraft plane3 city3)
	(fuel-level plane3 fl0)
	(ataircraft plane4 city1)
	(fuel-level plane4 fl0)
	(ataircraft plane5 city2)
	(fuel-level plane5 fl0)
	(atperson person1 city0)
	(atperson person2 city7)
	(atperson person3 city0)
	(atperson person4 city1)
	(atperson person5 city0)
	(atperson person6 city4)
	(atperson person7 city2)
	(atperson person8 city5)
	(atperson person9 city3)
	(atperson person10 city2)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(ataircraft plane1 city7)
	(ataircraft plane5 city2)
	(atperson person1 city6)
	(atperson person2 city2)
	(atperson person3 city1)
	(atperson person4 city6)
	(atperson person5 city6)
	(atperson person6 city4)
	(atperson person7 city1)
	(atperson person8 city3)
	(atperson person9 city7)
	(atperson person10 city7)
	))

)
