(define (domain grid)
 (:requirements :strips :typing)
 (:predicates (conn ?x - object ?y - object) (key-shape ?k - object ?s - object) (lock-shape ?x - object ?s - object) (at ?r - object ?x - object) (at-robot ?x - object) (place ?p - object) (key ?k - object) (shape ?s - object) (locked ?x - object) (holding ?k - object) (open ?x - object) (arm-empty))
 (:action unlock
  :parameters ( ?curpos - object ?lockpos - object ?key - object ?shape - object)
  :precondition (and (place ?curpos) (place ?lockpos) (key ?key) (shape ?shape) (conn ?curpos ?lockpos) (key-shape ?key ?shape) (lock-shape ?lockpos ?shape) (at-robot ?curpos) (locked ?lockpos) (holding ?key))
  :effect (and (open ?lockpos) (not (locked ?lockpos))))
 (:action move
  :parameters ( ?curpos - object ?nextpos - object)
  :precondition (and (place ?curpos) (place ?nextpos) (at-robot ?curpos) (conn ?curpos ?nextpos) (open ?nextpos))
  :effect (and (at-robot ?nextpos) (not (at-robot ?curpos))))
 (:action pickup
  :parameters ( ?curpos - object ?key - object)
  :precondition (and (place ?curpos) (key ?key) (at-robot ?curpos) (at ?key ?curpos) (arm-empty))
  :effect (and (holding ?key) (not (at ?key ?curpos)) (not (arm-empty))))
 (:action dynamicmacro_mod_1
  :parameters ( ?nextpos - object ?keyx2 - object)
  :precondition (and (open ?nextpos) (key ?keyx2) (holding ?keyx2))
  :effect (and (arm-empty) (at ?keyx2 ?nextpos) (not (holding ?keyx2))))
)
