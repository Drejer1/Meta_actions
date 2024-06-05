(define (domain zeno-travel)
 (:requirements :strips :typing)
 (:types aircraft person city flevel)
 (:predicates (atperson ?p - person ?c - city) (atplane ?a - aircraft ?c - city) (in ?p - person ?a - aircraft) (fuel-level ?a - aircraft ?l - flevel) (next ?l1 - flevel ?l2 - flevel))
 (:action fly
  :parameters ( ?a - aircraft ?c1 - city ?c2 - city ?l1 - flevel ?l2 - flevel)
  :precondition (and (atplane ?a ?c1) (fuel-level ?a ?l1) (next ?l2 ?l1))
  :effect (and (not (atplane ?a ?c1)) (atplane ?a ?c2) (not (fuel-level ?a ?l1)) (fuel-level ?a ?l2)))
 (:action refuel
  :parameters ( ?a - aircraft ?c - city ?l - flevel ?l1 - flevel)
  :precondition (and (fuel-level ?a ?l) (next ?l ?l1) (atplane ?a ?c))
  :effect (and (fuel-level ?a ?l1) (not (fuel-level ?a ?l))))
 (:action dynamicmacro_eff_3
  :parameters ( ?a - aircraft ?c - city ?l - flevel ?l1 - flevel ?c2x3x5 - city)
  :precondition (and (fuel-level ?a ?l) (next ?l ?l1) (atplane ?a ?c))
  :effect (and (atplane ?a ?c2x3x5) (fuel-level ?a ?l) (not (atplane ?a ?c)) (not (fuel-level ?a ?l1))))
 (:action dynamicmacro_eff_4
  :parameters ( ?c - city ?l - flevel ?l1 - flevel ?px4 - person ?c2x3x5 - city)
  :precondition (and (next ?l ?l1) (atperson ?px4 ?c))
  :effect (and (atperson ?px4 ?c2x3x5) (not (atperson ?px4 ?c))))
)
