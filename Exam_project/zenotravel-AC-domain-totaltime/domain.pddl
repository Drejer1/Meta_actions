(define (domain zeno-travel)
 (:requirements :strips :typing)
 (:types aircraft person city flevel)
 (:predicates (atperson ?p - person ?c - city) (atplane ?a - aircraft ?c - city) (in ?p - person ?a - aircraft) (fuel-level ?a - aircraft ?l - flevel) (next ?l1 - flevel ?l2 - flevel))
 (:action board
  :parameters ( ?p - person ?a - aircraft ?c - city)
  :precondition (and (atperson ?p ?c) (atplane ?a ?c))
  :effect (and (not (atperson ?p ?c)) (in ?p ?a)))
 (:action debark
  :parameters ( ?p - person ?a - aircraft ?c - city)
  :precondition (and (in ?p ?a) (atplane ?a ?c))
  :effect (and (not (in ?p ?a)) (atperson ?p ?c)))
 (:action refuel
  :parameters ( ?a - aircraft ?c - city ?l - flevel ?l1 - flevel)
  :precondition (and (fuel-level ?a ?l) (next ?l ?l1) (atplane ?a ?c))
  :effect (and (fuel-level ?a ?l1) (not (fuel-level ?a ?l))))
 (:action dynamicmacro_eff_3
  :parameters ( ?a - aircraft ?c - city ?l - flevel ?l1 - flevel ?c2x3x5 - city)
  :precondition (and (fuel-level ?a ?l) (next ?l ?l1) (atplane ?a ?c))
  :effect (and (atplane ?a ?c2x3x5) (fuel-level ?a ?l) (not (atplane ?a ?c)) (not (fuel-level ?a ?l1))))
)
