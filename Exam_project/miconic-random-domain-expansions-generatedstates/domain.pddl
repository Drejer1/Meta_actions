(define (domain miconic)
 (:requirements :strips :typing)
 (:types passenger floor)
 (:predicates (origin ?person - passenger ?floor - floor) (destin ?person - passenger ?floor - floor) (above ?floor1 - floor ?floor2 - floor) (boarded ?person - passenger) (not_boarded ?person - passenger) (served ?person - passenger) (not_served ?person - passenger) (lift-at  ?floor - floor))
 (:action depart
  :parameters ( ?f - floor ?p - passenger)
  :precondition (and (lift-at  ?f) (destin ?p ?f) (boarded ?p))
  :effect (and (not (boarded ?p)) (served ?p)))
 (:action dynamicmacro_mod_2
  :parameters ( ?px2 - passenger)
  :precondition (and (boarded ?px2))
  :effect (and (served ?px2) (not (boarded ?px2))))
 (:action dynamicmacro_mod_6
  :parameters ( ?f - floor ?p - passenger)
  :precondition (and (origin ?p ?f))
  :effect (and (served ?p) (not (boarded ?p))))
)
