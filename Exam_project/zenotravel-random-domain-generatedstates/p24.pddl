(define (problem ZTRAVEL-26-39)
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
	plane24 - aircraft
	plane25 - aircraft
	plane26 - aircraft
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
	person36 - person
	person37 - person
	person38 - person
	person39 - person
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
	city95 - city
	city96 - city
	city97 - city
	city98 - city
	city99 - city
	city100 - city
	city101 - city
	city102 - city
	city103 - city
	city104 - city
	city105 - city
	fl0 - flevel
	fl1 - flevel
	fl2 - flevel
	fl3 - flevel
	fl4 - flevel
	fl5 - flevel
	fl6 - flevel
	)
(:init
	(atplane plane1 city44)
	(fuel-level plane1 fl0)
	(atplane plane2 city13)
	(fuel-level plane2 fl0)
	(atplane plane3 city44)
	(fuel-level plane3 fl0)
	(atplane plane4 city89)
	(fuel-level plane4 fl0)
	(atplane plane5 city77)
	(fuel-level plane5 fl0)
	(atplane plane6 city15)
	(fuel-level plane6 fl0)
	(atplane plane7 city41)
	(fuel-level plane7 fl0)
	(atplane plane8 city76)
	(fuel-level plane8 fl0)
	(atplane plane9 city6)
	(fuel-level plane9 fl0)
	(atplane plane10 city75)
	(fuel-level plane10 fl0)
	(atplane plane11 city58)
	(fuel-level plane11 fl0)
	(atplane plane12 city34)
	(fuel-level plane12 fl0)
	(atplane plane13 city31)
	(fuel-level plane13 fl0)
	(atplane plane14 city51)
	(fuel-level plane14 fl0)
	(atplane plane15 city55)
	(fuel-level plane15 fl0)
	(atplane plane16 city97)
	(fuel-level plane16 fl0)
	(atplane plane17 city93)
	(fuel-level plane17 fl0)
	(atplane plane18 city88)
	(fuel-level plane18 fl0)
	(atplane plane19 city90)
	(fuel-level plane19 fl0)
	(atplane plane20 city32)
	(fuel-level plane20 fl0)
	(atplane plane21 city79)
	(fuel-level plane21 fl0)
	(atplane plane22 city105)
	(fuel-level plane22 fl0)
	(atplane plane23 city25)
	(fuel-level plane23 fl0)
	(atplane plane24 city35)
	(fuel-level plane24 fl0)
	(atplane plane25 city0)
	(fuel-level plane25 fl0)
	(atplane plane26 city22)
	(fuel-level plane26 fl0)
	(atperson person1 city38)
	(atperson person2 city99)
	(atperson person3 city33)
	(atperson person4 city34)
	(atperson person5 city18)
	(atperson person6 city102)
	(atperson person7 city1)
	(atperson person8 city43)
	(atperson person9 city88)
	(atperson person10 city5)
	(atperson person11 city95)
	(atperson person12 city49)
	(atperson person13 city66)
	(atperson person14 city75)
	(atperson person15 city88)
	(atperson person16 city88)
	(atperson person17 city96)
	(atperson person18 city20)
	(atperson person19 city94)
	(atperson person20 city35)
	(atperson person21 city88)
	(atperson person22 city73)
	(atperson person23 city82)
	(atperson person24 city99)
	(atperson person25 city89)
	(atperson person26 city80)
	(atperson person27 city94)
	(atperson person28 city49)
	(atperson person29 city4)
	(atperson person30 city76)
	(atperson person31 city19)
	(atperson person32 city85)
	(atperson person33 city54)
	(atperson person34 city66)
	(atperson person35 city51)
	(atperson person36 city26)
	(atperson person37 city94)
	(atperson person38 city45)
	(atperson person39 city28)
	(next fl0 fl1)
	(next fl1 fl2)
	(next fl2 fl3)
	(next fl3 fl4)
	(next fl4 fl5)
	(next fl5 fl6)
)
(:goal (and
	(atplane plane1 city49)
	(atplane plane2 city45)
	(atplane plane6 city46)
	(atplane plane8 city62)
	(atplane plane10 city47)
	(atplane plane12 city17)
	(atplane plane13 city3)
	(atplane plane21 city10)
	(atplane plane24 city68)
	(atplane plane26 city42)
	(atperson person1 city37)
	(atperson person2 city23)
	(atperson person3 city9)
	(atperson person4 city78)
	(atperson person5 city1)
	(atperson person6 city22)
	(atperson person7 city46)
	(atperson person8 city0)
	(atperson person9 city10)
	(atperson person10 city84)
	(atperson person11 city16)
	(atperson person12 city9)
	(atperson person13 city43)
	(atperson person14 city77)
	(atperson person15 city96)
	(atperson person16 city93)
	(atperson person17 city94)
	(atperson person18 city32)
	(atperson person19 city15)
	(atperson person20 city20)
	(atperson person21 city10)
	(atperson person22 city59)
	(atperson person23 city20)
	(atperson person24 city95)
	(atperson person25 city77)
	(atperson person26 city60)
	(atperson person27 city50)
	(atperson person28 city71)
	(atperson person29 city60)
	(atperson person30 city95)
	(atperson person31 city77)
	(atperson person32 city45)
	(atperson person34 city15)
	(atperson person35 city104)
	(atperson person36 city79)
	(atperson person37 city68)
	(atperson person38 city11)
	(atperson person39 city15)
	))

)
