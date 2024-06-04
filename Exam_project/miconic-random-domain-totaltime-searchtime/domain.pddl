(define (domain miconic)
 (:requirements :strips :typing)
 (:types passenger floor)
 (:predicates (origin ?person - passenger ?floor - floor) (destin ?person - passenger ?floor - floor) (above ?floor1 - floor ?floor2 - floor) (boarded ?person - passenger) (not_boarded ?person - passenger) (served ?person - passenger) (not_served ?person - passenger) (lift-at  ?floor - floor))
 (:action depart
  :parameters ( ?f - floor ?p - passenger)
  :precondition (and (lift-at  ?f) (destin ?p ?f) (boarded ?p))
  :effect (and (not (boarded ?p)) (served ?p)))
 (:action dynamicmacro_mod_4
  :parameters ( ?px2 - passenger)
  :effect (and (boarded ?px2)))
 (:action dynamicmacro_mod_5
  :parameters ( ?p - passenger ?f2x2 - floor)
  :precondition (and (destin ?p ?f2x2))
  :effect (and (served ?p) (not (boarded ?p))))
)
