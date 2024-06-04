(define (domain depots)
(:requirements :strips :typing)
(:types place locatable - object
	    depot distributor - place
        truck hoist surface - locatable
        pallet crate - surface)
(:predicates (at ?x - locatable ?y - place)
             (on ?x - crate ?y - surface)
             (in ?x - crate ?y - truck)
             (lifting ?x - hoist ?y - crate)
             (available ?x - hoist)
             (clear ?x - surface))

(:action Lift
  :parameters (?x - hoist ?y - crate ?z - surface ?p - place)
  :precondition (and (at ?x ?p) (available ?x) (at ?y ?p) (on ?y ?z) (clear ?y))
  :effect (and (not (at ?y ?p)) (lifting ?x ?y) (not (clear ?y)) (not (available ?x)) (clear ?z) (not (on ?y ?z))))

(:action Drop
  :parameters (?x - hoist ?y - crate ?z - surface ?p - place)
  :precondition (and (at ?x ?p) (at ?z ?p) (clear ?z) (lifting ?x ?y))
  :effect (and (available ?x) (not (lifting ?x ?y)) (at ?y ?p) (not (clear ?z)) (clear ?y)(on ?y ?z)))

(:action Load
  :parameters (?x - hoist ?y - crate ?z - truck ?p - place)
  :precondition (and (at ?x ?p) (at ?z ?p) (lifting ?x ?y))
  :effect (and (not (lifting ?x ?y)) (in ?y ?z) (available ?x)))

(:action Unload
  :parameters (?x - hoist ?y - crate ?z - truck ?p - place)
  :precondition (and (at ?x ?p) (at ?z ?p) (available ?x) (in ?y ?z))
  :effect (and (not (in ?y ?z)) (not (available ?x)) (lifting ?x ?y)))



;unload_mcr_drop remove ?x
(:action dynamicmacro_eff_6
    :parameters (?y - crate ?z - truck ?p - place ?zx4 - surface
    )
    :precondition (and
    (at ?z ?p)
    (in ?y ?z)
    (at ?zx4 ?p)
    (clear ?zx4)
    )
    :effect (and (at ?y ?p)
    (clear ?y)
    (on ?y ?zx4)
    (not (in ?y ?z))
    (not (clear ?zx4))
    )
)
;lift_mcr_load remove ?px5
(:action dynamicmacro_pre_1
    :parameters (?x - hoist ?y - crate ?z - surface ?p - place ?zx4 - truck
    )
    :precondition (and
    (at ?x ?p)
    (available ?x)
    (at ?y ?p)
    (on ?y ?z)
    (clear ?y)
    )
    :effect (and (not (lifting ?x ?y))
    (in ?y ?zx4)
    (not (clear ?y))
    (not (on ?y ?z))
    (clear ?z)
    (not (at ?y ?p))
    )
)


)
