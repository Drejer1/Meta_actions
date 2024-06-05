(define (domain barman)
 (:requirements :strips :typing :action-costs)
 (:types
    hand level beverage dispenser container - object
    shot shaker - container
    ingredient cocktail - beverage
 )
 (:predicates (ontable ?c - container) (holding ?h - hand ?c - container) (handempty ?h - hand) (empty ?c - container) (contains ?c - container ?b - beverage) (clean ?c - container) (used ?c - container ?b - beverage) (dispenses ?d - dispenser ?i - ingredient) (shaker-empty-level ?s - shaker ?l - level) (shaker-level ?s - shaker ?l - level) (next ?l1 - level ?l2 - level) (unshaked ?s - shaker) (shaked ?s - shaker) (cocktail-part1 ?c_0 - cocktail ?i - ingredient) (cocktail-part2 ?c_0 - cocktail ?i - ingredient))
 (:functions (total-cost))
 (:action grasp
  :parameters ( ?h - hand ?c - container)
  :precondition (and (ontable ?c) (handempty ?h))
  :effect (and (not (ontable ?c)) (not (handempty ?h)) (holding ?h ?c) (increase (total-cost) 1)))
 (:action leave
  :parameters ( ?h - hand ?c - container)
  :precondition (and (holding ?h ?c))
  :effect (and (not (holding ?h ?c)) (handempty ?h) (ontable ?c) (increase (total-cost) 1)))
 (:action fill_shot
  :parameters ( ?s_0 - shot ?i - ingredient ?h1 - hand ?h2 - hand ?d - dispenser)
  :precondition (and (holding ?h1 ?s_0) (handempty ?h2) (dispenses ?d ?i) (empty ?s_0) (clean ?s_0))
  :effect (and (not (empty ?s_0)) (contains ?s_0 ?i) (not (clean ?s_0)) (used ?s_0 ?i) (increase (total-cost) 10)))
 (:action pour_shot_to_clean_shaker
  :parameters ( ?s_0 - shot ?i - ingredient ?d_0 - shaker ?h1 - hand ?l - level ?l1 - level)
  :precondition (and (holding ?h1 ?s_0) (contains ?s_0 ?i) (empty ?d_0) (clean ?d_0) (shaker-level ?d_0 ?l) (next ?l ?l1))
  :effect (and (not (contains ?s_0 ?i)) (empty ?s_0) (contains ?d_0 ?i) (not (empty ?d_0)) (not (clean ?d_0)) (unshaked ?d_0) (not (shaker-level ?d_0 ?l)) (shaker-level ?d_0 ?l1) (increase (total-cost) 1)))
 (:action empty_shaker
  :parameters ( ?h - hand ?s - shaker ?b_0 - cocktail ?l - level ?l1 - level)
  :precondition (and (holding ?h ?s) (contains ?s ?b_0) (shaked ?s) (shaker-level ?s ?l) (shaker-empty-level ?s ?l1))
  :effect (and (not (shaked ?s)) (not (shaker-level ?s ?l)) (shaker-level ?s ?l1) (not (contains ?s ?b_0)) (empty ?s) (increase (total-cost) 1)))
 (:action clean_shaker
  :parameters ( ?h1 - hand ?h2 - hand ?s - shaker)
  :precondition (and (holding ?h1 ?s) (handempty ?h2) (empty ?s))
  :effect (and (clean ?s) (increase (total-cost) 1)))
 (:action shake
  :parameters ( ?b_0 - cocktail ?d1 - ingredient ?d2 - ingredient ?s - shaker ?h1 - hand ?h2 - hand)
  :precondition (and (holding ?h1 ?s) (handempty ?h2) (contains ?s ?d1) (contains ?s ?d2) (cocktail-part1 ?b_0 ?d1) (cocktail-part2 ?b_0 ?d2) (unshaked ?s))
  :effect (and (not (unshaked ?s)) (not (contains ?s ?d1)) (not (contains ?s ?d2)) (shaked ?s) (contains ?s ?b_0) (increase (total-cost) 1)))
 (:action pour_shaker_to_shot
  :parameters ( ?b - beverage ?d_1 - shot ?h - hand ?s - shaker ?l - level ?l1 - level)
  :precondition (and (holding ?h ?s) (shaked ?s) (empty ?d_1) (clean ?d_1) (contains ?s ?b) (shaker-level ?s ?l) (next ?l1 ?l))
  :effect (and (not (clean ?d_1)) (not (empty ?d_1)) (contains ?d_1 ?b) (shaker-level ?s ?l1) (not (shaker-level ?s ?l)) (increase (total-cost) 1)))
 (:action dynamicmacro_eff_5
  :parameters ( ?i - ingredient ?h1 - hand ?h2 - hand ?d - dispenser ?dx5 - shaker ?lx6 - level ?l1x7 - level)
  :precondition (and (handempty ?h2) (dispenses ?d ?i) (unshaked ?dx5) (shaker-level ?dx5 ?lx6) (next ?lx6 ?l1x7))
  :effect (and (contains ?dx5 ?i) (shaker-level ?dx5 ?l1x7) (not (shaker-level ?dx5 ?lx6)) (increase (total-cost) 0)))
 (:action dynamicmacro_pre_2
  :parameters ( ?h - hand ?c - container ?ix2 - ingredient ?dx4 - dispenser)
  :precondition (and (ontable ?c) (handempty ?h) (dispenses ?dx4 ?ix2) (empty ?c) (used ?c ?ix2))
  :effect (and (not (ontable ?c)) (holding ?h ?c) (contains ?c ?ix2) (not (empty ?c)) (not (handempty ?h)) (increase (total-cost) 0)))
)
