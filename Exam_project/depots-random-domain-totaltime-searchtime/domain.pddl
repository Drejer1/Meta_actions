(define (domain depots)
 (:requirements :strips :typing)
 (:types
    place locatable - object
    truck hoist surface - locatable
    pallet crate - surface
    depot distributor - place
 )
 (:predicates (at ?x - locatable ?y - place) (on ?x_0 - crate ?y_0 - surface) (in ?x_0 - crate ?y_1 - truck) (lifting ?x_1 - hoist ?y_2 - crate) (available ?x_1 - hoist) (clear ?x_2 - surface))
 (:action dynamicmacro_eff_11
  :parameters ( ?y_2 - crate ?z - surface ?p - place ?zx4 - truck ?px5 - place)
  :precondition (and (at ?y_2 ?p) (on ?y_2 ?z) (clear ?y_2) (at ?zx4 ?px5))
  :effect (and (clear ?z) (in ?y_2 ?zx4) (not (at ?y_2 ?p)) (not (clear ?y_2)) (not (on ?y_2 ?z))))
 (:action dynamicmacro_eff_16
  :parameters ( ?y_2 - crate ?z_0 - truck ?p - place ?zx4_0 - surface ?px5 - place)
  :precondition (and (at ?z_0 ?p) (in ?y_2 ?z_0) (at ?zx4_0 ?px5) (clear ?zx4_0))
  :effect (and (at ?y_2 ?px5) (clear ?y_2) (on ?y_2 ?zx4_0) (not (in ?y_2 ?z_0)) (not (clear ?zx4_0))))
)
