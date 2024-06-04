(define (domain mixed_f6_p8_u0_v0_d0_a0_n0_a0_b0_n0_f0-domain)
 (:requirements :strips :typing)
 (:types passenger floor)
 (:predicates (origin ?person - passenger ?floor - floor) (destin ?person - passenger ?floor - floor) (above ?floor1 - floor ?floor2 - floor) (boarded ?person - passenger) (not_boarded ?person - passenger) (served ?person - passenger) (not_served ?person - passenger) (lift-at  ?floor - floor))
 (:action up
  :parameters ( ?f1 - floor ?f2 - floor)
  :precondition (and (lift-at  ?f1) (above ?f1 ?f2))
  :effect (and (lift-at  ?f2) (not (lift-at  ?f1))))
 (:action dynamicmacro_mod_2
  :parameters ( ?px2 - passenger)
  :precondition (and (boarded ?px2))
  :effect (and (served ?px2) (not (boarded ?px2))))
 (:action dynamicmacro_mod_4
  :parameters ( ?px2 - passenger)
  :effect (and (boarded ?px2)))
)
