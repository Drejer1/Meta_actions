(define (domain gripper-strips)
 (:requirements :strips :typing)
 (:predicates (room ?r - object) (ball ?b - object) (gripper ?g - object) (at-robby ?r - object) (at ?b - object ?r - object) (free ?g - object) (carry ?o - object ?g - object))
 (:action move
  :parameters ( ?from - object ?to - object)
  :precondition (and (room ?from) (room ?to) (at-robby ?from))
  :effect (and (at-robby ?to) (not (at-robby ?from))))
 (:action pick
  :parameters ( ?obj - object ?room - object ?gripper - object)
  :precondition (and (ball ?obj) (room ?room) (gripper ?gripper) (at ?obj ?room) (at-robby ?room) (free ?gripper))
  :effect (and (carry ?obj ?gripper) (not (at ?obj ?room)) (not (free ?gripper))))
 (:action drop
  :parameters ( ?obj - object ?room - object ?gripper - object)
  :precondition (and (ball ?obj) (room ?room) (gripper ?gripper) (carry ?obj ?gripper) (at-robby ?room))
  :effect (and (at ?obj ?room) (free ?gripper) (not (carry ?obj ?gripper))))
 (:action dynamicmacro_eff_3
  :parameters ( ?obj - object ?room - object ?tox3 - object)
  :precondition (and (ball ?obj) (room ?room) (at ?obj ?room) (at-robby ?room) (room ?tox3))
  :effect (and (at-robby ?tox3) (at ?obj ?tox3) (not (at ?obj ?room)) (not (at-robby ?room))))
)
