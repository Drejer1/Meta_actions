(define (domain logistics-strips)
 (:requirements :strips :typing)
 (:predicates (obj ?obj - object) (truck ?truck - object) (airplane ?airplane - object) (airport ?airport - object) (location ?loc - object) (in-city ?obj - object ?city - object) (city ?city - object) (at ?obj - object ?loc - object) (in ?obj - object ?obj2 - object))
 (:action load_truck
  :parameters ( ?obj - object ?truck - object ?loc - object)
  :precondition (and (obj ?obj) (truck ?truck) (location ?loc) (at ?truck ?loc) (at ?obj ?loc))
  :effect (and (not (at ?obj ?loc)) (in ?obj ?truck)))
 (:action load_airplane
  :parameters ( ?obj - object ?airplane - object ?loc - object)
  :precondition (and (obj ?obj) (airplane ?airplane) (location ?loc) (at ?obj ?loc) (at ?airplane ?loc))
  :effect (and (not (at ?obj ?loc)) (in ?obj ?airplane)))
 (:action unload_truck
  :parameters ( ?obj - object ?truck - object ?loc - object)
  :precondition (and (obj ?obj) (truck ?truck) (location ?loc) (at ?truck ?loc) (in ?obj ?truck))
  :effect (and (not (in ?obj ?truck)) (at ?obj ?loc)))
 (:action unload_airplane
  :parameters ( ?obj - object ?airplane - object ?loc - object)
  :precondition (and (obj ?obj) (airplane ?airplane) (location ?loc) (in ?obj ?airplane) (at ?airplane ?loc))
  :effect (and (not (in ?obj ?airplane)) (at ?obj ?loc)))
 (:action drive_truck
  :parameters ( ?truck - object ?loc-from - object ?loc-to - object ?city - object)
  :precondition (and (truck ?truck) (location ?loc-from) (location ?loc-to) (city ?city) (at ?truck ?loc-from) (in-city ?loc-from ?city) (in-city ?loc-to ?city))
  :effect (and (not (at ?truck ?loc-from)) (at ?truck ?loc-to)))
 (:action fly_airplane
  :parameters ( ?airplane - object ?loc-from - object ?loc-to - object)
  :precondition (and (airplane ?airplane) (airport ?loc-from) (airport ?loc-to) (at ?airplane ?loc-from))
  :effect (and (not (at ?airplane ?loc-from)) (at ?airplane ?loc-to)))
 (:action dynamicmacro_eff_13
  :parameters ( ?obj - object ?loc - object ?loc-tox3 - object ?cityx4 - object)
  :precondition (and (obj ?obj) (location ?loc) (at ?obj ?loc) (location ?loc-tox3) (city ?cityx4) (in-city ?loc ?cityx4) (in-city ?loc-tox3 ?cityx4))
  :effect (and (at ?obj ?loc-tox3) (not (at ?obj ?loc))))
 (:action dynamicmacro_eff_17
  :parameters ( ?loc-from - object ?loc-to - object ?objx3 - object)
  :precondition (and (airport ?loc-from) (airport ?loc-to) (obj ?objx3) (location ?loc-to) (at ?objx3 ?loc-to) (location ?loc-from))
  :effect (and (at ?objx3 ?loc-from) (not (at ?objx3 ?loc-to))))
)
