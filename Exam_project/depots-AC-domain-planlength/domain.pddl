(define (domain depot_3_2_2_5_5_3-domain)
 (:requirements :strips :typing)
 (:types
    place locatable - object
    truck hoist surface - locatable
    pallet crate - surface
    depot distributor - place
 )
 (:predicates (at ?x - locatable ?y - place) (on ?x_0 - crate ?y_0 - surface) (in ?x_0 - crate ?y_1 - truck) (lifting ?x_1 - hoist ?y_2 - crate) (available ?x_1 - hoist) (clear ?x_2 - surface))
 (:action lift
  :parameters ( ?x_1 - hoist ?y_2 - crate ?z - surface ?p - place)
  :precondition (and (at ?x_1 ?p) (available ?x_1) (at ?y_2 ?p) (on ?y_2 ?z) (clear ?y_2))
  :effect (and (not (at ?y_2 ?p)) (lifting ?x_1 ?y_2) (not (clear ?y_2)) (not (available ?x_1)) (clear ?z) (not (on ?y_2 ?z))))
 (:action dynamicmacro_eff_16
  :parameters ( ?y_2 - crate ?z_0 - truck ?p - place ?zx4 - surface ?px5 - place)
  :precondition (and (at ?z_0 ?p) (in ?y_2 ?z_0) (at ?zx4 ?px5) (clear ?zx4))
  :effect (and (at ?y_2 ?px5) (clear ?y_2) (on ?y_2 ?zx4) (not (in ?y_2 ?z_0)) (not (clear ?zx4))))
 (:action dynamicmacro_eff_6
  :parameters ( ?y_2 - crate ?z_0 - truck ?p - place ?zx4 - surface)
  :precondition (and (at ?z_0 ?p) (in ?y_2 ?z_0) (at ?zx4 ?p) (clear ?zx4))
  :effect (and (at ?y_2 ?p) (clear ?y_2) (on ?y_2 ?zx4) (not (in ?y_2 ?z_0)) (not (clear ?zx4))))
 (:action dynamicmacro_pre_1
  :parameters ( ?x_1 - hoist ?y_2 - crate ?z - surface ?p - place ?zx4_0 - truck)
  :precondition (and (at ?x_1 ?p) (available ?x_1) (at ?y_2 ?p) (on ?y_2 ?z) (clear ?y_2))
  :effect (and (not (lifting ?x_1 ?y_2)) (in ?y_2 ?zx4_0) (not (clear ?y_2)) (not (on ?y_2 ?z)) (clear ?z) (not (at ?y_2 ?p))))
 (:action dynamicmacro_pre_2
  :parameters ( ?x_1 - hoist ?y_2 - crate ?z_0 - truck ?zx4 - surface ?px5 - place)
  :precondition (and (available ?x_1) (in ?y_2 ?z_0) (at ?x_1 ?px5) (at ?zx4 ?px5) (clear ?zx4))
  :effect (and (not (lifting ?x_1 ?y_2)) (not (in ?y_2 ?z_0)) (clear ?y_2) (not (clear ?zx4)) (at ?y_2 ?px5) (on ?y_2 ?zx4)))
)
