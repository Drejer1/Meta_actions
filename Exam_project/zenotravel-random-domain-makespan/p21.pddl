(define (problem ZTRAVEL-23-35)
(:domain zeno-travel)
(:objects
	plane1 - aircraft
	plane2 - aircraft
	plane3 - aircraft
	plane4 - aircraft
	plane5 - aircraft
	plane6 - aircraft
	plane7 - aircraft
	plane8 - aircraft
	plane9 - aircraft
	plane10 - aircraft
	plane11 - aircraft
	plane12 - aircraft
	plane13 - aircraft
	plane14 - aircraft
	plane15 - aircraft
	plane16 - aircraft
	plane17 - aircraft
	plane18 - aircraft
	plane19 - aircraft
	plane20 - aircraft
	plane21 - aircraft
	plane22 - aircraft
	plane23 - aircraft
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
	person12 - person
	person13 - person
	person14 - person
	person15 - person
	person16 - person
	person17 - person
	person18 - person
	person19 - person
	person20 - person
	person21 - person
	person22 - person
	person23 - person
	person24 - person
	person25 - person
	person26 - person
	person27 - person
	person28 - person
	person29 - person
	person30 - person
	person31 - person
	person32 - person
	person33 - person
	person34 - person
	person35 - person
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
	city20 - city
	city21 - city
	city22 - city
	city23 - city
	city24 - city
	city25 - city
	city26 - city
	city27 - city
	city28 - city
	city29 - city
	city30 - city
	city31 - city
	city32 - city
	city33 - city
	city34 - city
	city35 - city
	city36 - city
	city37 - city
	city38 - city
	city39 - city
	city40 - city
	city41 - city
	city42 - city
	city43 - city
	city44 - city
	city45 - city
	city46 - city
	city47 - city
	city48 - city
	city49 - city
	city50 - city
	city51 - city
	city52 - city
	city53 - city
	city54 - city
	city55 - city
	city56 - city
	city57 - city
	city58 - city
	city59 - city
	city60 - city
	city61 - city
	city62 - city
	city63 - city
	city64 - city
	city65 - city
	city66 - city
	city67 - city
	city68 - city
	city69 - city
	city70 - city
	city71 - city
	city72 - city
	city73 - city
	city74 - city
	city75 - city
	city76 - city
	city77 - city
	city78 - city
	city79 - city
	city80 - city
	city81 - city
	city82 - city
	city83 - city
	city84 - city
	city85 - city
	city86 - city
	city87 - city
	city88 - city
	city89 - city
	city90 - city
	city91 - city
	city92 - city
	city93 - city
	city94 - city
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(atplane plane1 city74)
	(fuel-level plane1 fl0)
	(atplane plane2 city74)
	(fuel-level plane2 fl0)
	(atplane plane3 city35)
	(fuel-level plane3 fl0)
	(atplane plane4 city25)
	(fuel-level plane4 fl0)
	(atplane plane5 city17)
	(fuel-level plane5 fl0)
	(atplane plane6 city42)
	(fuel-level plane6 fl0)
	(atplane plane7 city22)
	(fuel-level plane7 fl0)
	(atplane plane8 city1)
	(fuel-level plane8 fl0)
	(atplane plane9 city73)
	(fuel-level plane9 fl0)
	(atplane plane10 city50)
	(fuel-level plane10 fl0)
	(atplane plane11 city6)
	(fuel-level plane11 fl0)
	(atplane plane12 city10)
	(fuel-level plane12 fl0)
	(atplane plane13 city50)
	(fuel-level plane13 fl0)
	(atplane plane14 city13)
	(fuel-level plane14 fl0)
	(atplane plane15 city28)
	(fuel-level plane15 fl0)
	(atplane plane16 city23)
	(fuel-level plane16 fl0)
	(atplane plane17 city76)
	(fuel-level plane17 fl0)
	(atplane plane18 city63)
	(fuel-level plane18 fl0)
	(atplane plane19 city42)
	(fuel-level plane19 fl0)
	(atplane plane20 city2)
	(fuel-level plane20 fl0)
	(atplane plane21 city2)
	(fuel-level plane21 fl0)
	(atplane plane22 city51)
	(fuel-level plane22 fl0)
	(atplane plane23 city65)
	(fuel-level plane23 fl0)
	(atperson person1 city22)
	(atperson person2 city51)
	(atperson person3 city64)
	(atperson person4 city21)
	(atperson person5 city75)
	(atperson person6 city19)
	(atperson person7 city62)
	(atperson person8 city53)
	(atperson person9 city56)
	(atperson person10 city39)
	(atperson person11 city59)
	(atperson person12 city75)
	(atperson person13 city68)
	(atperson person14 city41)
	(atperson person15 city3)
	(atperson person16 city80)
	(atperson person17 city72)
	(atperson person18 city35)
	(atperson person19 city7)
	(atperson person20 city13)
	(atperson person21 city57)
	(atperson person22 city51)
	(atperson person23 city14)
	(atperson person24 city6)
	(atperson person25 city44)
	(atperson person26 city30)
	(atperson person27 city15)
	(atperson person28 city25)
	(atperson person29 city72)
	(atperson person30 city11)
	(atperson person31 city43)
	(atperson person32 city94)
	(atperson person33 city26)
	(atperson person34 city94)
	(atperson person35 city34)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(atplane plane5 city38)
	(atplane plane9 city92)
	(atplane plane10 city9)
	(atplane plane11 city39)
	(atplane plane16 city60)
	(atplane plane17 city56)
	(atplane plane18 city29)
	(atplane plane19 city2)
	(atplane plane21 city37)
	(atperson person1 city44)
	(atperson person2 city63)
	(atperson person3 city29)
	(atperson person4 city46)
	(atperson person5 city42)
	(atperson person6 city94)
	(atperson person7 city24)
	(atperson person8 city37)
	(atperson person9 city81)
	(atperson person10 city92)
	(atperson person11 city19)
	(atperson person12 city71)
	(atperson person13 city40)
	(atperson person14 city61)
	(atperson person15 city41)
	(atperson person16 city61)
	(atperson person17 city28)
	(atperson person18 city82)
	(atperson person19 city44)
	(atperson person20 city83)
	(atperson person21 city48)
	(atperson person22 city29)
	(atperson person23 city3)
	(atperson person24 city44)
	(atperson person25 city48)
	(atperson person26 city34)
	(atperson person27 city11)
	(atperson person28 city46)
	(atperson person29 city54)
	(atperson person30 city67)
	(atperson person31 city30)
	(atperson person32 city81)
	(atperson person33 city0)
	(atperson person34 city7)
	(atperson person35 city51)
	))

)