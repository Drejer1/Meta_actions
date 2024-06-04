(define (problem ZTRAVEL-6-6)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	plane5 - aircraft
	plane6 - aircraft
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
	city4 - city
	city5 - city
	city6 - city
	city7 - city
	city8 - city
	city9 - city
	city10 - city
	city11 - city
	city12 - city
	city13 - city
	city14 - city
	city15 - city
	city16 - city
	city17 - city
	city18 - city
	city19 - city
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(atplane plane1 city11)
	(fuel-level plane1 fl0)
	(atplane plane2 city17)
	(fuel-level plane2 fl0)
	(atplane plane3 city14)
	(fuel-level plane3 fl0)
	(atplane plane4 city5)
	(fuel-level plane4 fl0)
	(atplane plane5 city6)
	(fuel-level plane5 fl0)
	(atplane plane6 city7)
	(fuel-level plane6 fl0)
	(atperson person1 city2)
	(atperson person2 city1)
	(atperson person3 city0)
	(atperson person4 city7)
	(atperson person5 city18)
	(atperson person6 city15)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(atplane plane1 city6)
	(atplane plane3 city16)
	(atperson person1 city5)
	(atperson person2 city14)
	(atperson person4 city16)
	(atperson person5 city16)
	(atperson person6 city5)
	))

)
