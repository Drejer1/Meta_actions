(define (domain miconic)
 (:requirements :strips :typing)
 (:types passenger floor)
 (:predicates (origin ?person - passenger ?floor - floor) (destin ?person - passenger ?floor - floor) (above ?floor1 - floor ?floor2 - floor) (boarded ?person - passenger) (not_boarded ?person - passenger) (served ?person - passenger) (not_served ?person - passenger) (lift-at  ?floor - floor))
 (:action board
  :parameters ( ?f - floor ?p - passenger)
  :precondition (and (lift-at  ?f) (origin ?p ?f))
  :effect (and (boarded ?p)))
 (:action dynamicmacro_mod_1
  :parameters ( ?f2 - floor ?px2 - passenger)
  :precondition (and (destin ?px2 ?f2) (boarded ?px2))
  :effect (and (served ?px2) (not (boarded ?px2))))
 (:action dynamicmacro_mod_3
  :parameters ( ?f2 - floor ?px2 - passenger)
  :precondition (and (origin ?px2 ?f2))
  :effect (and (boarded ?px2)))
 (:action dynamicmacro_mod_4
  :parameters ( ?px2 - passenger)
  :effect (and (boarded ?px2)))
)
