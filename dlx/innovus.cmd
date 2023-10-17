#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Oct 17 22:01:36 2023                
#                                                     
#######################################################

#@(#)CDS: Innovus v20.11-s130_1 (64bit) 08/05/2020 15:53 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.11-s130_1 NR200802-2257/20_11-UB (database version 18.20.512) {superthreading v2.9}
#@(#)CDS: AAE 20.11-s008 (64bit) 08/05/2020 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.11-s059_1 () Aug  2 2020 05:46:30 ( )
#@(#)CDS: SYNTECH 20.11-s028_1 () Aug  1 2020 06:14:27 ( )
#@(#)CDS: CPE v20.11-s013
#@(#)CDS: IQuantus/TQuantus 19.1.3-s260 (64bit) Thu May 28 10:57:28 PDT 2020 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set defHierChar /
set delaycal_input_transition_delay 0.1ps
set fpIsMaxIoHeight 0
set init_gnd_net gnd
set init_mmmc_file Default.view
set init_oa_search_lib {}
set init_pwr_net vdd
set init_verilog dlx.v
set init_lef_file /eda/dk/nangate45/lef/NangateOpenCellLibrary.lef
init_design
saveDesign DLX
getIoFlowFlag
setIoFlowFlag 0
floorPlan -coreMarginsBy die -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.1 0.6 5.0 5.0 5.0 5.0
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 1.0 0.6 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 1.0 0.6 5.0 5.0 5.0 5.0
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.992234685073 0.599735 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vdd gnd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {vdd gnd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {gnd vdd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {gnd vdd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None
selectWire 161.7300 2.9200 162.5300 168.1600 10 vdd
deselectAll
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { gnd vdd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { gnd vdd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
setPlaceMode -prerouteAsObs {1 2 3 4 5 6 7 8}
zoomBox -94.39800 5.72300 246.20750 165.68250
zoomBox -36.75550 42.89550 141.04400 126.39600
setPlaceMode -fp false
place_design
saveDesign DLX
saveDesign DLX
zoomBox -36.75550 17.84550 141.04400 101.34600
zoomBox -36.75550 9.49550 141.04400 92.99600
zoomBox -36.75550 -23.90450 141.04400 59.59600
zoomOut
zoomIn
zoomBox 40.04500 -10.48650 132.85900 33.10200
selectObject HTerm HAZARD_DETECTION_UNIT_1/p3
deselectObject HTerm HAZARD_DETECTION_UNIT_1/p3
selectObject Module forwarding_unit_1
deselectObject Module forwarding_unit_1
zoomBox 45.79600 -8.69500 124.68850 28.35550
setDrawView ameba
zoomBox 32.72050 -11.90450 141.91450 39.37650
fit
selectObject Module HAZARD_DETECTION_UNIT_1
deselectAll
zoomBox -74.15800 11.50550 266.44800 171.46550
zoomBox -9.19550 46.74350 236.89350 162.31500
selectObject Module HAZARD_DETECTION_UNIT_1
deselectAll
selectObject Module CU_1
deselectAll
fit
selectObject Module DATAPATH_1
deselectAll
setDrawView ameba
setDrawView fplan
setDrawView fplan
zoomBox -75.31450 15.59000 265.29150 175.55000
zoomBox -152.56500 -24.84450 318.86350 196.55400
zoomBox -223.80200 -47.35600 330.81950 213.11250
zoomBox -170.77450 -24.89450 300.65400 196.50400
setDrawView place
fit
setDrawView ameba
selectObject Module DATAPATH_1
deselectAll
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell DLX -pin CLK -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[0]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[1]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[2]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[3]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[4]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[5]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[6]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[7]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[8]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[9]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[10]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[11]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[12]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[13]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[14]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[15]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[16]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[17]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[18]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[19]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[20]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[21]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[22]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[23]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[24]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[25]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[26]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[27]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[28]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[29]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[30]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_ADDRESS[31]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin DRAM_ENABLE -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[0]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[1]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[2]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[3]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[4]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[5]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[6]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[7]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[8]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[9]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[10]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[11]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[12]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[13]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[14]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[15]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[16]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[17]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[18]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[19]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[20]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[21]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[22]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[23]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[24]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[25]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[26]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[27]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[28]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[29]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[30]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_IN[31]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[0]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[1]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[2]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[3]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[4]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[5]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[6]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[7]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[8]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[9]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[10]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[11]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[12]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[13]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[14]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[15]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[16]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[17]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[18]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[19]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[20]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[21]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[22]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[23]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[24]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[25]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[26]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[27]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[28]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[29]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[30]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {DRAM_OUT[31]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin DRAM_READNOTWRITE -status unplaced -silent
setPtnPinStatus -cell DLX -pin DRAM_READY -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[0]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[1]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[2]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[3]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[4]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[5]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[6]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[7]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[8]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[9]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[10]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[11]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[12]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[13]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[14]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[15]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[16]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[17]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[18]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[19]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[20]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[21]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[22]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[23]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[24]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[25]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[26]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[27]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[28]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[29]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[30]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_ADDRESS[31]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[0]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[1]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[2]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[3]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[4]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[5]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[6]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[7]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[8]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[9]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[10]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[11]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[12]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[13]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[14]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[15]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[16]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[17]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[18]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[19]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[20]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[21]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[22]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[23]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[24]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[25]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[26]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[27]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[28]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[29]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[30]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin {IRAM_DATA[31]} -status unplaced -silent
setPtnPinStatus -cell DLX -pin IRAM_ENABLE -status unplaced -silent
setPtnPinStatus -cell DLX -pin IRAM_READY -status unplaced -silent
setPtnPinStatus -cell DLX -pin RST -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell DLX -pin CLK -status unplaced -silent
setPtnPinStatus -cell DLX -pin RST -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {CLK RST}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 1 -spreadType center -spacing 172.33 -pin {CLK RST}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 1 -spreadType center -spacing 1.0 -pin CLK
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 1 -spreadType center -spacing 1.0 -pin RST
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Right -layer 1 -spreadType side -pin {{DRAM_ADDRESS[0]} {DRAM_ADDRESS[1]} {DRAM_ADDRESS[2]} {DRAM_ADDRESS[3]} {DRAM_ADDRESS[4]} {DRAM_ADDRESS[5]} {DRAM_ADDRESS[6]} {DRAM_ADDRESS[7]} {DRAM_ADDRESS[8]} {DRAM_ADDRESS[9]} {DRAM_ADDRESS[10]} {DRAM_ADDRESS[11]} {DRAM_ADDRESS[12]} {DRAM_ADDRESS[13]} {DRAM_ADDRESS[14]} {DRAM_ADDRESS[15]} {DRAM_ADDRESS[16]} {DRAM_ADDRESS[17]} {DRAM_ADDRESS[18]} {DRAM_ADDRESS[19]} {DRAM_ADDRESS[20]} {DRAM_ADDRESS[21]} {DRAM_ADDRESS[22]} {DRAM_ADDRESS[23]} {DRAM_ADDRESS[24]} {DRAM_ADDRESS[25]} {DRAM_ADDRESS[26]} {DRAM_ADDRESS[27]} {DRAM_ADDRESS[28]} {DRAM_ADDRESS[29]} {DRAM_ADDRESS[30]} {DRAM_ADDRESS[31]} DRAM_ENABLE {DRAM_IN[0]} {DRAM_IN[1]} {DRAM_IN[2]} {DRAM_IN[3]} {DRAM_IN[4]} {DRAM_IN[5]} {DRAM_IN[6]} {DRAM_IN[7]} {DRAM_IN[8]} {DRAM_IN[9]} {DRAM_IN[10]} {DRAM_IN[11]} {DRAM_IN[12]} {DRAM_IN[13]} {DRAM_IN[14]} {DRAM_IN[15]} {DRAM_IN[16]} {DRAM_IN[17]} {DRAM_IN[18]} {DRAM_IN[19]} {DRAM_IN[20]} {DRAM_IN[21]} {DRAM_IN[22]} {DRAM_IN[23]} {DRAM_IN[24]} {DRAM_IN[25]} {DRAM_IN[26]} {DRAM_IN[27]} {DRAM_IN[28]} {DRAM_IN[29]} {DRAM_IN[30]} {DRAM_IN[31]} {DRAM_OUT[0]} {DRAM_OUT[1]} {DRAM_OUT[2]} {DRAM_OUT[3]} {DRAM_OUT[4]} {DRAM_OUT[5]} {DRAM_OUT[6]} {DRAM_OUT[7]} {DRAM_OUT[8]} {DRAM_OUT[9]} {DRAM_OUT[10]} {DRAM_OUT[11]} {DRAM_OUT[12]} {DRAM_OUT[13]} {DRAM_OUT[14]} {DRAM_OUT[15]} {DRAM_OUT[16]} {DRAM_OUT[17]} {DRAM_OUT[18]} {DRAM_OUT[19]} {DRAM_OUT[20]} {DRAM_OUT[21]} {DRAM_OUT[22]} {DRAM_OUT[23]} {DRAM_OUT[24]} {DRAM_OUT[25]} {DRAM_OUT[26]} {DRAM_OUT[27]} {DRAM_OUT[28]} {DRAM_OUT[29]} {DRAM_OUT[30]} {DRAM_OUT[31]} DRAM_READNOTWRITE DRAM_READY}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Left -layer 1 -spreadType side -pin {{IRAM_ADDRESS[0]} {IRAM_ADDRESS[1]} {IRAM_ADDRESS[2]} {IRAM_ADDRESS[3]} {IRAM_ADDRESS[4]} {IRAM_ADDRESS[5]} {IRAM_ADDRESS[6]} {IRAM_ADDRESS[7]} {IRAM_ADDRESS[8]} {IRAM_ADDRESS[9]} {IRAM_ADDRESS[10]} {IRAM_ADDRESS[11]} {IRAM_ADDRESS[12]} {IRAM_ADDRESS[13]} {IRAM_ADDRESS[14]} {IRAM_ADDRESS[15]} {IRAM_ADDRESS[16]} {IRAM_ADDRESS[17]} {IRAM_ADDRESS[18]} {IRAM_ADDRESS[19]} {IRAM_ADDRESS[20]} {IRAM_ADDRESS[21]} {IRAM_ADDRESS[22]} {IRAM_ADDRESS[23]} {IRAM_ADDRESS[24]} {IRAM_ADDRESS[25]} {IRAM_ADDRESS[26]} {IRAM_ADDRESS[27]} {IRAM_ADDRESS[28]} {IRAM_ADDRESS[29]} {IRAM_ADDRESS[30]} {IRAM_ADDRESS[31]} {IRAM_DATA[0]} {IRAM_DATA[1]} {IRAM_DATA[2]} {IRAM_DATA[3]} {IRAM_DATA[4]} {IRAM_DATA[5]} {IRAM_DATA[6]} {IRAM_DATA[7]} {IRAM_DATA[8]} {IRAM_DATA[9]} {IRAM_DATA[10]} {IRAM_DATA[11]} {IRAM_DATA[12]} {IRAM_DATA[13]} {IRAM_DATA[14]} {IRAM_DATA[15]} {IRAM_DATA[16]} {IRAM_DATA[17]} {IRAM_DATA[18]} {IRAM_DATA[19]} {IRAM_DATA[20]} {IRAM_DATA[21]} {IRAM_DATA[22]} {IRAM_DATA[23]} {IRAM_DATA[24]} {IRAM_DATA[25]} {IRAM_DATA[26]} {IRAM_DATA[27]} {IRAM_DATA[28]} {IRAM_DATA[29]} {IRAM_DATA[30]} {IRAM_DATA[31]} IRAM_ENABLE IRAM_READY}
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin RST
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin RST
setPinAssignMode -pinEditInBatch false
saveDesign DLX
saveDesign DLX
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
setDrawView ameba
setDrawView place
getFillerMode -quiet
addFiller -cell FILLCELL_X8 FILLCELL_X4 FILLCELL_X32 FILLCELL_X2 FILLCELL_X16 FILLCELL_X1 -prefix FILLER
saveDesign DLX
saveDesign DLX
setMultiCpuUsage -localCpu 8 -cpuPerRemoteHost 1 -remoteHost 0 -keepLicense true
setDistributeHost -local
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
selectInst setAnalysisMode -analysisType onChipVariation
