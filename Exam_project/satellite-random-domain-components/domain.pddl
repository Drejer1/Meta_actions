(define (domain satellite)
 (:requirements :strips :typing)
 (:types satellite direction instrument mode)
 (:predicates (on_board ?i - instrument ?s - satellite) (supports ?i - instrument ?m - mode) (pointing ?s - satellite ?d - direction) (power_avail ?s - satellite) (power_on ?i - instrument) (calibrated ?i - instrument) (have_image ?d - direction ?m - mode) (calibration_target ?i - instrument ?d - direction))
 (:action turn_to
  :parameters ( ?s - satellite ?d_new - direction ?d_prev - direction)
  :precondition (and (pointing ?s ?d_prev))
  :effect (and (pointing ?s ?d_new) (not (pointing ?s ?d_prev))))
 (:action switch_on
  :parameters ( ?i - instrument ?s - satellite)
  :precondition (and (on_board ?i ?s) (power_avail ?s))
  :effect (and (power_on ?i) (not (calibrated ?i)) (not (power_avail ?s))))
 (:action switch_off
  :parameters ( ?i - instrument ?s - satellite)
  :precondition (and (on_board ?i ?s) (power_on ?i))
  :effect (and (not (power_on ?i)) (power_avail ?s)))
 (:action calibrate
  :parameters ( ?s - satellite ?i - instrument ?d - direction)
  :precondition (and (on_board ?i ?s) (calibration_target ?i ?d) (pointing ?s ?d) (power_on ?i))
  :effect (and (calibrated ?i)))
 (:action take_image
  :parameters ( ?s - satellite ?d - direction ?i - instrument ?m - mode)
  :precondition (and (calibrated ?i) (on_board ?i ?s) (supports ?i ?m) (power_on ?i) (pointing ?s ?d))
  :effect (and (have_image ?d ?m)))
 (:action dynamicmacro_eff_12
  :parameters ( ?i - instrument ?s - satellite ?dx2 - direction ?d_newx3x3 - direction)
  :precondition (and (on_board ?i ?s) (power_avail ?s) (calibration_target ?i ?dx2) (pointing ?s ?dx2))
  :effect (and (power_on ?i) (calibrated ?i) (pointing ?s ?d_newx3x3) (not (power_avail ?s)) (not (pointing ?s ?dx2))))
 (:action dynamicmacro_eff_2
  :parameters ( ?d_new - direction ?ix3 - instrument ?mx4 - mode)
  :precondition (and (calibrated ?ix3) (supports ?ix3 ?mx4) (power_on ?ix3))
  :effect (and (have_image ?d_new ?mx4)))
 (:action dynamicmacro_pre_1
  :parameters ( ?s - satellite ?d_new - direction ?d_prev - direction ?mx4 - mode)
  :precondition (and (pointing ?s ?d_prev))
  :effect (and (have_image ?d_new ?mx4) (pointing ?s ?d_new) (not (pointing ?s ?d_prev))))
 (:action dynamicmacro_mod_1
  :parameters ( ?s - satellite ?d_new - direction ?ix3 - instrument ?mx4 - mode)
  :precondition (and (calibrated ?ix3) (on_board ?ix3 ?s) (supports ?ix3 ?mx4) (power_on ?ix3))
  :effect (and (have_image ?d_new ?mx4)))
 (:action dynamicmacro_mod_2
  :parameters ( ?i - instrument ?s - satellite ?d_newx2 - direction)
  :precondition (and (on_board ?i ?s) (power_avail ?s) (calibration_target ?i ?d_newx2))
  :effect (and (power_on ?i) (calibrated ?i) (not (power_avail ?s))))
 (:action dynamicmacro_mod_3
  :parameters ( ?i - instrument ?s - satellite)
  :precondition (and (on_board ?i ?s) (power_avail ?s))
  :effect (and (power_on ?i) (calibrated ?i) (not (power_avail ?s))))
 (:action dynamicmacro_mod_5
  :parameters ( ?i - instrument ?s - satellite ?d_newx3x3 - direction ?mx4x4x4 - mode)
  :precondition (and (on_board ?i ?s) (power_avail ?s) (supports ?i ?mx4x4x4))
  :effect (and (power_on ?i) (calibrated ?i) (have_image ?d_newx3x3 ?mx4x4x4) (not (power_avail ?s))))
)
