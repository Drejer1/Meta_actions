(define (domain zeno-travel)
 (:requirements :strips :typing)
 (:types aircraft person city flevel)
 (:predicates (atperson ?p - person ?c - city) (ataircraft ?a - aircraft ?c - city) (in ?p - person ?a - aircraft) (fuel-level ?a - aircraft ?l - flevel) (next ?l1 - flevel ?l2 - flevel))
 (:action dynamicmacro_eff_4
  :parameters ( ?c - city ?l - flevel ?l1 - flevel ?px4 - person ?c2x3x5 - city)
  :precondition (and (next ?l ?l1) (atperson ?px4 ?c))
  :effect (and (atperson ?px4 ?c2x3x5) (not (atperson ?px4 ?c))))
 (:action dynamicmacro_mod_1
  :parameters ( ?a - aircraft ?c - city ?px4 - person ?c2x3x5 - city)
  :precondition (and (ataircraft ?a ?c) (atperson ?px4 ?c))
  :effect (and (ataircraft ?a ?c2x3x5) (atperson ?px4 ?c2x3x5) (not (atperson ?px4 ?c)) (not (ataircraft ?a ?c)) (not (in ?px4 ?a))))
)
