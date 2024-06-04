(define (domain logistics_c2_s2_p2_a2-domain)
 (:requirements :strips :typing)
 (:predicates (obj ?obj - object) (truck ?truck - object) (airplane ?airplane - object) (airport ?airport - object) (location ?loc - object) (in-city ?obj - object ?city - object) (city ?city - object) (at ?obj - object ?loc - object) (in ?obj - object ?obj2 - object))
 (:action load_truck
  :parameters ( ?obj - object ?truck - object ?loc - object)
  :precondition (and (obj ?obj) (truck ?truck) (location ?loc) (at ?truck ?loc) (at ?obj ?loc))
  :effect (and (not (at ?obj ?loc)) (in ?obj ?truck)))
 (:action unload_truck
  :parameters ( ?obj - object ?truck - object ?loc - object)
  :precondition (and (obj ?obj) (truck ?truck) (location ?loc) (at ?truck ?loc) (in ?obj ?truck))
  :effect (and (not (in ?obj ?truck)) (at ?obj ?loc)))
 (:action unload_airplane
  :parameters ( ?obj - object ?airplane - object ?loc - object)
  :precondition (and (obj ?obj) (airplane ?airplane) (location ?loc) (in ?obj ?airplane) (at ?airplane ?loc))
  :effect (and (not (in ?obj ?airplane)) (at ?obj ?loc)))
 (:action fly_airplane
  :parameters ( ?airplane - object ?loc_from - object ?loc_to - object)
  :precondition (and (airplane ?airplane) (airport ?loc_from) (airport ?loc_to) (at ?airplane ?loc_from))
  :effect (and (not (at ?airplane ?loc_from)) (at ?airplane ?loc_to)))
 (:action dynamicmacro_eff_13
  :parameters ( ?obj - object ?loc - object ?loc_tox3 - object ?cityx4 - object)
  :precondition (and (obj ?obj) (location ?loc) (at ?obj ?loc) (location ?loc_tox3) (city ?cityx4) (in-city ?loc ?cityx4) (in-city ?loc_tox3 ?cityx4))
  :effect (and (at ?obj ?loc_tox3) (not (at ?obj ?loc))))
 (:action dynamicmacro_eff_17
  :parameters ( ?loc_from - object ?loc_to - object ?objx3 - object)
  :precondition (and (airport ?loc_from) (airport ?loc_to) (obj ?objx3) (location ?loc_to) (at ?objx3 ?loc_to) (location ?loc_from))
  :effect (and (at ?objx3 ?loc_from) (not (at ?objx3 ?loc_to))))
)
