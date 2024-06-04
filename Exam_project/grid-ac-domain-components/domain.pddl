(define (domain grid_3_3_1_6_4-domain)
 (:requirements :strips :typing)
 (:predicates (conn ?x - object ?y - object) (key-shape ?k - object ?s - object) (lock-shape ?x - object ?s - object) (at ?r - object ?x - object) (at-robot  ?x - object) (place ?p - object) (key ?k - object) (shape ?s - object) (locked ?x - object) (holding ?k - object) (open ?x - object) (arm-empty))
 (:action unlock
  :parameters ( ?curpos - object ?lockpos - object ?key - object ?shape - object)
  :precondition (and (place ?curpos) (place ?lockpos) (key ?key) (shape ?shape) (conn ?curpos ?lockpos) (key-shape ?key ?shape) (lock-shape ?lockpos ?shape) (at-robot  ?curpos) (locked ?lockpos) (holding ?key))
  :effect (and (open ?lockpos) (not (locked ?lockpos))))
 (:action move
  :parameters ( ?curpos - object ?nextpos - object)
  :precondition (and (place ?curpos) (place ?nextpos) (at-robot  ?curpos) (conn ?curpos ?nextpos) (open ?nextpos))
  :effect (and (at-robot  ?nextpos) (not (at-robot  ?curpos))))
 (:action pickup
  :parameters ( ?curpos - object ?key - object)
  :precondition (and (place ?curpos) (key ?key) (at-robot  ?curpos) (at ?key ?curpos) (arm-empty))
  :effect (and (holding ?key) (not (at ?key ?curpos)) (not (arm-empty))))
 (:action pickup_and_loose
  :parameters ( ?curpos - object ?newkey - object ?oldkey - object)
  :precondition (and (place ?curpos) (key ?newkey) (key ?oldkey) (at-robot  ?curpos) (holding ?oldkey) (at ?newkey ?curpos))
  :effect (and (holding ?newkey) (at ?oldkey ?curpos) (not (holding ?oldkey)) (not (at ?newkey ?curpos))))
 (:action putdown
  :parameters ( ?curpos - object ?key - object)
  :precondition (and (place ?curpos) (key ?key) (at-robot  ?curpos) (holding ?key))
  :effect (and (arm-empty) (at ?key ?curpos) (not (holding ?key))))
 (:action dynamicmacro_eff_9
  :parameters ( ?curpos - object ?nextposx2 - object)
  :precondition (and (place ?curpos) (at-robot  ?curpos) (place ?nextposx2) (open ?nextposx2))
  :effect (and (at-robot  ?nextposx2) (not (at-robot  ?curpos))))
 (:action dynamicmacro_mod_1
  :parameters ( ?nextpos - object ?keyx2 - object)
  :precondition (and (open ?nextpos) (key ?keyx2) (holding ?keyx2))
  :effect (and (arm-empty) (at ?keyx2 ?nextpos) (not (holding ?keyx2))))
 (:action dynamicmacro_mod_3
  :parameters ( ?nextpos - object ?keyx2 - object)
  :precondition (and (open ?nextpos) (key ?keyx2) (at ?keyx2 ?nextpos) (arm-empty))
  :effect (and (holding ?keyx2) (not (at ?keyx2 ?nextpos)) (not (arm-empty))))
)