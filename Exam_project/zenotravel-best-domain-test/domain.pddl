(define (domain zeno-travel)
(:requirements :typing )
(:types aircraft person city flevel - object)
(:predicates (atperson ?p - person ?c - city)
             (atplane ?a - aircraft ?c - city)
             (in ?p - person ?a - aircraft)
	     (fuel-level ?a - aircraft ?l - flevel)
	     (next ?l1 ?l2 - flevel))


(:action board
 :parameters (?p - person ?a - aircraft ?c - city)

 :precondition (and (atperson ?p ?c)
                 (ataircraft ?a ?c))
 :effect (and (not (atperson ?p ?c))
              (in ?p ?a)))

(:action debark
 :parameters (?p - person ?a - aircraft ?c - city)

 :precondition (and (in ?p ?a)
                 (ataircraft ?a ?c))
 :effect (and (not (in ?p ?a))
              (atperson ?p ?c)))

(:action fly
 :parameters (?a - aircraft ?c1 ?c2 - city ?l1 ?l2 - flevel)

 :precondition (and (ataircraft ?a ?c1)
                 (fuel-level ?a ?l1)
		 (next ?l2 ?l1))
 :effect (and (not (ataircraft ?a ?c1))
              (ataircraft ?a ?c2)
              (not (fuel-level ?a ?l1))
              (fuel-level ?a ?l2)))

(:action zoom
 :parameters (?a - aircraft ?c1 ?c2 - city ?l1 ?l2 ?l3 - flevel)

 :precondition (and (ataircraft ?a ?c1)
                 (fuel-level ?a ?l1)
		 (next ?l2 ?l1)
		 (next ?l3 ?l2)
		)
 :effect (and (not (ataircraft ?a ?c1))
              (ataircraft ?a ?c2)
              (not (fuel-level ?a ?l1))
              (fuel-level ?a ?l3)
	)
)

(:action refuel
 :parameters (?a - aircraft ?c - city ?l - flevel ?l1 - flevel)

 :precondition (and (fuel-level ?a ?l)
                 (next ?l ?l1)
                 (ataircraft ?a ?c))
 :effect (and (fuel-level ?a ?l1) (not (fuel-level ?a ?l))))
	



;refuel_mcr_board_mcr_fly_mcr_debark remove ?a
(:action dynamicmacro_eff_4 :parameters (?c - city ?l - flevel ?l1 - flevel ?px4 - person ?c2x3x5 - city)
:precondition (and 
(next ?l ?l1)
(atperson ?px4 ?c)
)
:effect (and (atperson ?px4 ?c2x3x5)
(not (atperson ?px4 ?c))
)
)		


;refuel_mcr_board_mcr_fly_mcr_debark remove ?l
(:action dynamicmacro_mod_1 :parameters (?a - aircraft ?c - city ?px4 - person ?c2x3x5 - city)
:precondition (and 
(ataircraft ?a ?c)
(atperson ?px4 ?c)
)
:effect (and (ataircraft ?a ?c2x3x5)
(atperson ?px4 ?c2x3x5)
(not (atperson ?px4 ?c))
(not (ataircraft ?a ?c))
(not (in ?px4 ?a))
)
)

)

