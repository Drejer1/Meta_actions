(define (problem ZTRAVEL-6-5)
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
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(atplane plane1 city15)
	(fuel-level plane1 fl0)
	(atplane plane2 city0)
	(fuel-level plane2 fl0)
	(atplane plane3 city12)
	(fuel-level plane3 fl0)
	(atplane plane4 city9)
	(fuel-level plane4 fl0)
	(atplane plane5 city2)
	(fuel-level plane5 fl0)
	(atplane plane6 city6)
	(fuel-level plane6 fl0)
	(atperson person1 city8)
	(atperson person2 city8)
	(atperson person3 city6)
	(atperson person4 city9)
	(atperson person5 city15)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(atplane plane1 city13)
	(atplane plane4 city1)
	(atplane plane5 city11)
	(atperson person1 city1)
	(atperson person2 city11)
	(atperson person3 city4)
	(atperson person4 city16)
	(atperson person5 city6)
	))

)
