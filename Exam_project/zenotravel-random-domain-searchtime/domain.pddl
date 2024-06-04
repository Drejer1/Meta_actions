(define (domain ztravel_1_6-domain)
 (:requirements :strips :typing)
 (:types aircraft person city flevel)
 (:predicates (atperson ?p - person ?c - city) (atplane ?a - aircraft ?c - city) (in ?p - person ?a - aircraft) (fuel-level ?a - aircraft ?l - flevel) (next ?l1 - flevel ?l2 - flevel))
 (:action dynamicmacro_eff_3
  :parameters ( ?a - aircraft ?c - city ?l - flevel ?l1 - flevel ?c2x3x5 - city)
  :precondition (and (fuel-level ?a ?l) (next ?l ?l1) (atplane ?a ?c))
  :effect (and (atplane ?a ?c2x3x5) (fuel-level ?a ?l) (not (atplane ?a ?c)) (not (fuel-level ?a ?l1))))
 (:action dynamicmacro_eff_6
  :parameters ( ?a - aircraft ?c - city ?l - flevel ?px4 - person ?c2x3x5 - city)
  :precondition (and (fuel-level ?a ?l) (atplane ?a ?c) (atperson ?px4 ?c))
  :effect (and (atplane ?a ?c2x3x5) (fuel-level ?a ?l) (atperson ?px4 ?c2x3x5) (not (atperson ?px4 ?c)) (not (atplane ?a ?c)) (not (in ?px4 ?a))))
)