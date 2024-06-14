(define (problem ZTRAVEL-1-6)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
	person6 - person
	city0 - city
	city1 - city
	city2 - city
	city3 - city
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(ataircraft plane1 city1)
	(fuel-level plane1 fl0)
	(atperson person1 city0)
	(atperson person2 city2)
	(atperson person3 city3)
	(atperson person4 city2)
	(atperson person5 city2)
	(atperson person6 city0)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(atperson person1 city2)
	(atperson person2 city3)
	(atperson person3 city3)
	(atperson person4 city2)
	(atperson person5 city0)
	(atperson person6 city0)
	))

)
