(define (domain rover)
 (:requirements :strips :typing)
 (:types rover waypoint store camera mode lander objective)
 (:predicates (at ?x - rover ?y - waypoint)
 (at_lander ?x_0 - lander ?y - waypoint)
  (can_traverse ?r - rover ?x_1 - waypoint ?y - waypoint)
   (equipped_for_soil_analysis ?r - rover)
    (equipped_for_rock_analysis ?r - rover)
    (equipped_for_imaging ?r - rover)
     (empty ?s - store)
     (have_rock_analysis ?r - rover ?w - waypoint)
      (have_soil_analysis ?r - rover ?w - waypoint)
       (full ?s - store) (calibrated ?c - camera ?r - rover)
        (supports ?c - camera ?m - mode)
         (available ?r - rover)
          (visible ?w - waypoint ?p - waypoint)
          (have_image ?r - rover ?o - objective ?m - mode)
           (communicated_soil_data ?w - waypoint)
           (communicated_rock_data ?w - waypoint)
           (communicated_image_data ?o - objective ?m - mode)
           (at_soil_sample ?w - waypoint)
            (at_rock_sample ?w - waypoint)
            (visible_from ?o - objective ?w - waypoint)
             (store_of ?s - store ?r - rover)
              (calibration_target ?i - camera ?o - objective)
               (on_board ?i - camera ?r - rover)
               (channel_free ?l - lander))
 (:action navigate
  :parameters ( ?x - rover ?y - waypoint ?z - waypoint)
  :precondition (and (can_traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z))
  :effect (and (not (at ?x ?y)) (at ?x ?z)))
 (:action sample_rock
  :parameters ( ?x - rover ?s - store ?p - waypoint)
  :precondition (and (at ?x ?p) (at_rock_sample ?p) (equipped_for_rock_analysis ?x) (store_of ?s ?x) (empty ?s))
  :effect (and (not (empty ?s)) (full ?s) (have_rock_analysis ?x ?p) (not (at_rock_sample ?p))))
 (:action drop
  :parameters ( ?x - rover ?y_0 - store)
  :precondition (and (store_of ?y_0 ?x) (full ?y_0))
  :effect (and (not (full ?y_0)) (empty ?y_0)))
 (:action calibrate
  :parameters ( ?r - rover ?i - camera ?t - objective ?w - waypoint)
  :precondition (and (equipped_for_imaging ?r) (calibration_target ?i ?t) (at ?r ?w) (visible_from ?t ?w) (on_board ?i ?r))
  :effect (and (calibrated ?i ?r)))
 (:action communicate_soil_data
  :parameters ( ?r - rover ?l - lander ?p - waypoint ?x_1 - waypoint ?y - waypoint)
  :precondition (and (at ?r ?x_1) (at_lander ?l ?y) (have_soil_analysis ?r ?p) (visible ?x_1 ?y) (available ?r) (channel_free ?l))
  :effect (and (not (available ?r)) (not (channel_free ?l)) (channel_free ?l) (communicated_soil_data ?p) (available ?r)))
 (:action communicate_rock_data
  :parameters ( ?r - rover ?l - lander ?p - waypoint ?x_1 - waypoint ?y - waypoint)
  :precondition (and (at ?r ?x_1) (at_lander ?l ?y) (have_rock_analysis ?r ?p) (visible ?x_1 ?y) (available ?r) (channel_free ?l))
  :effect (and (not (available ?r)) (not (channel_free ?l)) (channel_free ?l) (communicated_rock_data ?p) (available ?r)))
 (:action dynamicmacro_eff_4
  :parameters ( ?x - rover ?y - waypoint ?z - waypoint)
  :precondition (and (can_traverse ?x ?y ?z) (available ?x) (at ?x ?y) (visible ?y ?z) (at_soil_sample ?z) (equipped_for_soil_analysis ?x))
  :effect (and (at ?x ?z) (have_soil_analysis ?x ?z) (not (at ?x ?y)) (not (at_soil_sample ?z))))
 (:action dynamicmacro_mod_5
  :parameters ( ?r - rover ?o - objective ?i - camera ?m - mode ?lx3x6 - lander ?yx6x7 - waypoint)
  :precondition (and (calibrated ?i ?r) (on_board ?i ?r) (equipped_for_imaging ?r) (supports ?i ?m) (available ?r) (at_lander ?lx3x6 ?yx6x7) (channel_free ?lx3x6))
  :effect (and (have_image ?r ?o ?m) (communicated_image_data ?o ?m) (not (calibrated ?i ?r))))
)
