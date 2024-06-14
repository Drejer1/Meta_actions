(define (problem ZTRAVEL-3-8)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
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
	(ataircraft plane2 city5)
	(fuel-level plane2 fl0)
	(ataircraft plane3 city5)
	(fuel-level plane3 fl0)
	(atperson person1 city2)
	(atperson person2 city3)
	(atperson person3 city3)
	(atperson person4 city3)
	(atperson person5 city1)
	(atperson person6 city2)
	(atperson person7 city3)
	(atperson person8 city3)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(ataircraft plane1 city3)
	(atperson person1 city3)
	(atperson person2 city3)
	(atperson person3 city1)
	(atperson person4 city3)
	(atperson person6 city2)
	(atperson person7 city3)
	(atperson person8 city3)
	))

)