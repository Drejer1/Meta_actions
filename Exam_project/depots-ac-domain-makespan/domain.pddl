(define (domain depots)
 (:requirements :strips :typing)
 (:types
    place locatable - object
    truck hoist surface - locatable
    pallet crate - surface
    depot distributor - place
 )
 (:predicates (at ?x - locatable ?y - place) (on ?x_0 - crate ?y_0 - surface) (in ?x_0 - crate ?y_1 - truck) (lifting ?x_1 - hoist ?y_2 - crate) (available ?x_1 - hoist) (clear ?x_2 - surface))
 (:action drive
  :parameters ( ?x_3 - truck ?y - place ?z - place)
  :precondition (and (at ?x_3 ?y))
  :effect (and (not (at ?x_3 ?y)) (at ?x_3 ?z)))
 (:action drop
  :parameters ( ?x_1 - hoist ?y_2 - crate ?z_0 - surface ?p - place)
  :precondition (and (at ?x_1 ?p) (at ?z_0 ?p) (clear ?z_0) (lifting ?x_1 ?y_2))
  :effect (and (available ?x_1) (not (lifting ?x_1 ?y_2)) (at ?y_2 ?p) (not (clear ?z_0)) (clear ?y_2) (on ?y_2 ?z_0)))
 (:action dynamicmacro_eff_1
  :parameters ( ?y_2 - crate ?z_0 - surface ?p - place ?zx4 - truck)
  :precondition (and (at ?y_2 ?p) (on ?y_2 ?z_0) (clear ?y_2) (at ?zx4 ?p))
  :effect (and (clear ?z_0) (in ?y_2 ?zx4) (not (at ?y_2 ?p)) (not (clear ?y_2)) (not (on ?y_2 ?z_0))))
 (:action dynamicmacro_eff_16
  :parameters ( ?y_2 - crate ?z_1 - truck ?p - place ?zx4_0 - surface ?px5 - place)
  :precondition (and (at ?z_1 ?p) (in ?y_2 ?z_1) (at ?zx4_0 ?px5) (clear ?zx4_0))
  :effect (and (at ?y_2 ?px5) (clear ?y_2) (on ?y_2 ?zx4_0) (not (in ?y_2 ?z_1)) (not (clear ?zx4_0))))
 (:action dynamicmacro_eff_6
  :parameters ( ?y_2 - crate ?z_1 - truck ?p - place ?zx4_0 - surface)
  :precondition (and (at ?z_1 ?p) (in ?y_2 ?z_1) (at ?zx4_0 ?p) (clear ?zx4_0))
  :effect (and (at ?y_2 ?p) (clear ?y_2) (on ?y_2 ?zx4_0) (not (in ?y_2 ?z_1)) (not (clear ?zx4_0))))
 (:action dynamicmacro_pre_2
  :parameters ( ?x_1 - hoist ?y_2 - crate ?z_1 - truck ?zx4_0 - surface ?px5 - place)
  :precondition (and (available ?x_1) (in ?y_2 ?z_1) (at ?x_1 ?px5) (at ?zx4_0 ?px5) (clear ?zx4_0))
  :effect (and (not (lifting ?x_1 ?y_2)) (not (in ?y_2 ?z_1)) (clear ?y_2) (not (clear ?zx4_0)) (at ?y_2 ?px5) (on ?y_2 ?zx4_0)))
)
