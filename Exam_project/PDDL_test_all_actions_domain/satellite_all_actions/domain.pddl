(define (domain satellite)
(:requirements :equality :strips)
(:predicates
	 (on_board ?i ?s) (supports ?i ?m) (pointing ?s ?d) (power_avail ?s) (power_on ?i) (calibrated ?i) (have_image ?d ?m) (calibration_target ?i ?d)(satellite ?x) (direction ?x) (instrument ?x) (mode ?x) )
(:action turn_to
 :parameters ( ?s - satellite ?d_new - direction ?d_prev - direction)
 :precondition
	(and (satellite ?s) (direction ?d_new) (direction ?d_prev)  (pointing ?s ?d_prev))
 :effect
	(and (pointing ?s ?d_new) (not (pointing ?s ?d_prev))))

(:action switch_on
 :parameters ( ?i - instrument ?s - satellite)
 :precondition
	(and (instrument ?i) (satellite ?s)  (on_board ?i ?s) (power_avail ?s))
 :effect
	(and (power_on ?i) (not (calibrated ?i)) (not (power_avail ?s))))

(:action switch_off
 :parameters ( ?i - instrument ?s - satellite)
 :precondition
	(and (instrument ?i) (satellite ?s)  (on_board ?i ?s) (power_on ?i))
 :effect
	(and (power_avail ?s) (not (power_on ?i))))

(:action calibrate
 :parameters ( ?s - satellite ?i - instrument ?d - direction)
 :precondition
	(and (satellite ?s) (instrument ?i) (direction ?d)  (on_board ?i ?s) (calibration_target ?i ?d) (pointing ?s ?d) (power_on ?i))
 :effect
	 (calibrated ?i))

(:action take_image
 :parameters ( ?s - satellite ?d - direction ?i - instrument ?m - mode)
 :precondition
	(and (satellite ?s) (direction ?d) (instrument ?i) (mode ?m)  (calibrated ?i) (on_board ?i ?s) (supports ?i ?m) (power_on ?i) (pointing ?s ?d) (power_on ?i))
 :effect
	 (have_image ?d ?m))



;switch_on_mcr_calibrate_mcr_turn_to_mcr_take_image remove ?mx4x4x4
(:action dynamicmacro_eff_12 :parameters (?i - instrument ?s - satellite ?dx2 ?d_newx3x3)
:precondition (and 
 (satellite ?s) (instrument ?i) (direction ?dx2) (direction ?d_newx3x3)
(on_board ?i ?s)
(power_avail ?s)
(calibration_target ?i ?dx2)
(pointing ?s ?dx2)
)
:effect (and (power_on ?i)
(calibrated ?i)
(pointing ?s ?d_newx3x3)
(not (power_avail ?s))
(not (pointing ?s ?dx2))
)
)


;switch_on_mcr_turn_to_mcr_calibrate remove ?d_prevx3
(:action dynamicmacro_mod_2 :parameters (?i - instrument ?s - satellite ?d_newx2 - direction)
:precondition (and 
(satellite ?s) (direction ?d_prevx3) (instrument ?i) 
(on_board ?i ?s)
(power_avail ?s)
(calibration_target ?i ?d_newx2)
)
:effect (and (power_on ?i)
(calibrated ?i)
(not (power_avail ?s))
)
)


)
