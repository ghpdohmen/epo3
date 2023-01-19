#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Jan 19 09:51:01 2023                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.11-s080_1 (64bit) 08/04/2017 11:13 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.11-s080_1 NR170721-2155/17_11-UB (database version 2.30, 390.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.11-s034 (64bit) 08/04/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.11-s053_1 () Aug  1 2017 23:31:41 ( )
#@(#)CDS: SYNTECH 17.11-s012_1 () Jul 21 2017 02:29:12 ( )
#@(#)CDS: CPE v17.11-s095
#@(#)CDS: IQRC/TQRC 16.1.1-s215 (64bit) Thu Jul  6 20:18:10 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
setPreference CmdLogMode 2
set init_lef_file /data/designkit/tsmc-180nm/lib/TSMCHOME/digital/Back_End/lef/tcb018gbwp7t_270a/lef/tcb018gbwp7t_6lm.lef
set init_mmmc_file ../in/mmmc.view
set init_verilog ../in/top.v
set init_top_cell pixel
set init_gnd_net dgnd
set init_pwr_net dvdd
suppressMessage TECHLIB IMPLF IMPVL IMPFP IMPCTE IMPRM IMPSP IMPCTE NRDB IMPEXT
encMessage info 0
encMessage warning 0
init_design
generateVias
floorPlan -site core7T -s 325 325 0 0 0 0
addStripe -nets {dgnd dvdd} -layer METAL4 -width 2 -number_of_sets 5 -spacing 0.5
addWellTap -cell TAPCELLBWP7T -cellInterval 30 -prefix WELLTAP
editPin -pin clk -layer 2 -fixedPin -assign {20.86 0} -side TOP
editPin -pin reset -layer 2 -fixedPin -assign {21.42 0} -side TOP
editPin -pin data_in -layer 2 -fixedPin -assign {21.98 0} -side TOP
editPin -pin clk15k_in -layer 2 -fixedPin -assign {22.54 0} -side TOP
editPin -pin data_switch -layer 2 -fixedPin -assign {29.82 0} -side TOP
editPin -pin clk15k_switch -layer 2 -fixedPin -assign {30.38 0} -side TOP
editPin -pin R -layer 2 -fixedPin -assign {30.94 0} -side TOP
editPin -pin G -layer 2 -fixedPin -assign {31.50 0} -side TOP
editPin -pin B -layer 2 -fixedPin -assign {32.06 0} -side TOP
editPin -pin V -layer 2 -fixedPin -assign {32.62 0} -side TOP
editPin -pin H -layer 2 -fixedPin -assign {33.18 0} -side TOP
set_analysis_view -setup {setup_wc} -hold {hold_bc}
setNanoRouteMode -routeTopRoutingLayer 4
setNanoRouteMode -routeBottomRoutingLayer 1
encMessage info 1
encMessage warning 1
sroute
placeDesign -prePlaceOpt
refinePlace -checkRoute 0 -preserveRouting 0 -rmAffectedRouting 0 -swapEEQ 0 -checkPinLayerForAccess 1
timeDesign -preCTS
timeDesign -preCTS -hold
optDesign -preCTS -incr
set_ccopt_property buffer_cells { CKBD0BWP7T CKBD10BWP7T CKBD12BWP7T CKBD1BWP7T CKBD2BWP7T CKBD3BWP7T CKBD4BWP7T CKBD6BWP7T CKBD8BWP7T }
set_ccopt_property inverter_cells { CKND0BWP7T CKND10BWP7T CKND12BWP7T CKND1BWP7T CKND2BWP7T CKND3BWP7T CKND4BWP7T CKND6BWP7T CKND8BWP7T }
create_ccopt_clock_tree_spec
ccopt_design
timeDesign -postCTS
timeDesign -postCTS -hold
optDesign -postCTS -incr
optDesign -postCTS -hold
routeDesign -globalDetail
setNanoRouteMode -drouteUseMultiCutViaEffort high
setNanoRouteMode -droutePostRouteSwapVia multiCut
routeDesign -viaOpt
setAnalysisMode -analysisType onChipVariation
timeDesign -postRoute
timeDesign -postRoute -hold
optDesign -postRoute
optDesign -postRoute -hold
addFiller -cell FILL8BWP7T FILL64BWP7T FILL4BWP7T FILL32BWP7T FILL2BWP7T FILL1BWP7T FILL16BWP7T -prefix FILLER
verifyGeometry
verifyConnectivity
encMessage info 0
write_sdf ../out/$init_top_cell.sdf
saveDesign ../out/pixel.enc
streamOut ../out/pixel.gds -mapFile ./streamOut.map -libName TOP_DIG -units 2000 -mode ALL
saveNetlist ../out/pixel.v -excludeLeafCell
encMessage info 1
reportGateCount
win
panPage -1 0
panPage 0 -1
panPage 0 -1
panPage 0 1
panPage 0 1
zoomOut
zoomIn
zoomIn
zoomIn
panPage 0 1
panPage -1 0
panPage 0 1
panPage 0 1
panPage -1 0
panPage 0 1
panPage -1 0
panPage 0 1
panPage -1 0
panPage 0 1
panPage -1 0
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 0 1
panPage 1 0
panPage 0 -1
panPage 0 -1
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 0 1
panPage 0 -1
panPage 0 -1
panPage -1 0
panPage -1 0
panPage 0 -1
panPage 0 -1
panPage -1 0
panPage 0 -1
panPage 0 -1
panPage -1 0
panPage 0 -1
panPage -1 0
panPage 0 -1
panPage -1 0
panPage 0 -1
panPage -1 0
panPage 0 -1
panPage -1 0
panPage 0 -1
panPage 1 0
panPage 0 -1
panPage 1 0
panPage 0 -1
panPage 0 -1
panPage 1 0
panPage 0 -1
panPage 1 0
panPage 0 -1
panPage 1 0
panPage 0 -1
panPage 1 0
panPage 0 -1
panPage 0 -1
panPage 1 0
fit
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false
violationBrowserClose
zoomOut
zoomIn
zoomIn
zoomIn
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
zoomOut
zoomOut
panPage 0 1
panPage 0 1
panPage 1 0
panPage 0 -1
panPage 0 1
fit
selectWire 0.0000 15.4450 324.8000 15.9150 1 dvdd
deselectAll
selectInst FILLER_462
deselectAll
selectWire 37.1000 1.8200 37.3800 44.1000 2 FE_PHN376_gl_ram_n_308
deselectAll
selectWire 0.0000 97.7650 324.8000 98.2350 1 dgnd
deselectAll
selectWire 23.1000 61.1800 23.3800 116.9000 4 FE_PHN328_gl_vgd_vertical_counter_7
deselectAll
selectWire 15.8200 84.1400 16.1000 88.9000 2 gl_const_gr_lg_mul_88_58_n_20
deselectAll
selectWire 13.0200 60.6200 13.3000 150.5000 4 FE_PHN333_gl_vgd_vertical_counter_1
deselectAll
selectWire 28.1400 61.7400 28.4200 128.1000 4 {gl_vgd_vertical_counter[7]}
deselectAll
selectInst gl_const_gr_lg_mul_88_58_g479
deselectAll
selectWire 30.3800 100.3800 32.9000 100.6600 2 gl_gr_lg_lcountdown_n_14
deselectAll
selectWire 42.7000 113.8200 42.9800 202.0200 4 FE_PHN410_ml_ms_cnt_count_0
deselectAll
selectWire 33.1800 48.8600 33.4600 166.1800 4 FE_PHN358_gl_sig_scale_v
deselectAll
selectInst gl_vgd_g1619
deselectAll
selectWire 28.1400 159.7400 28.4200 237.8600 4 FE_PHN294_gl_ram_ram_82_2
deselectAll
selectWire 82.5750 0.0000 84.5750 324.8000 4 dvdd
deselectAll
selectInst FILLER_3396
panPage 0 -1
panPage 0 -1
panPage 0 1
panPage 0 1
panPage 0 1
zoomIn
zoomIn
zoomIn
panPage 0 1
panPage 0 1
panPage -1 0
panPage -1 0
panPage 0 1
panPage -1 0
panPage 0 1
panPage -1 0
panPage 0 1
panPage -1 0
panPage 0 1
panPage -1 0
panPage 0 1
panPage -1 0
panPage 0 1
panPage -1 0
panPage 0 1
panPage -1 0
panPage 0 1
panPage -1 0
panPage 0 1
panPage -1 0
panPage 0 1
panPage 0 1
panPage 0 1
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage 1 0
panPage 1 0
panPage 0 -1
panPage -1 0
panPage -1 0
panPage 0 1
deselectAll
selectVia 22.4900 323.7700 23.3900 324.1500 2 clk15k_in
deselectAll
selectVia 22.4900 323.7700 23.3900 324.1500 2 clk15k_in
deselectAll
selectWire 22.5650 323.8450 29.5150 324.0750 1 clk15k_in
deselectAll
selectVia 22.4900 323.7700 23.3900 324.1500 2 clk15k_in
deselectAll
selectWire 23.1000 267.2600 23.3800 322.9800 4 data_in
deselectAll
selectWire 23.1000 267.2600 23.3800 322.9800 4 data_in
deselectAll
selectWire 21.9800 322.7000 23.3800 322.9800 3 data_in
deselectAll
selectVia 21.9300 322.6500 22.8300 323.0300 3 data_in
deselectAll
selectVia 22.5300 322.6500 23.4300 323.0300 4 data_in
gui_select -next -point {16.1455 324.272}
deselectAll
panPage 1 0
panPage 1 0
selectObject IO_Pin data_switch
deselectAll
selectObject IO_Pin clk15k_switch
deselectAll
selectObject IO_Pin R
deselectAll
selectObject IO_Pin V
deselectAll
selectObject IO_Pin H
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 0 -1
panPage 0 -1
panPage 0 1
panPage 0 1
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage 0 -1
panPage 0 -1
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage 0 1
panPage 0 -1
panPage 0 1
panPage 0 -1
panPage 0 -1
panPage -1 0
panPage -1 0
panPage 0 1
panPage 0 1
panPage -1 0
panPage 0 -1
panPage -1 0
panPage 0 1
panPage 0 -1
panPage -1 0
panPage 0 -1
panPage -1 0
panPage 0 1
panPage -1 0
panPage -1 0
panPage 0 1
panPage 1 0
panPage 1 0
panPage -1 0
panPage -1 0
deselectAll
selectPhyPin 0.0000 322.8000 2.0000 324.8000 4 dgnd
deselectAll
selectPhyPin 2.5000 322.8000 4.5000 324.8000 4 dvdd
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 1
panPage 0 1
panPage 0 -1
panPage 0 1
panPage 0 -1
panPage 1 0
panPage 0 1
panPage -1 0
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage -1 0
panPage 0 1
panPage -1 0
panPage -1 0
panPage 0 1
panPage 1 0
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 1 0
panPage 0 -1
panPage 0 1
panPage 1 0
panPage 0 1
panPage 0 1
panPage 0 -1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 -1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 1 0
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 -1
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 0 1
panPage 0 -1
panPage -1 0
panPage 0 1
panPage -1 0
panPage -1 0
panPage -1 0
panPage 0 -1
panPage 0 -1
panPage -1 0
panPage 0 1
panPage 0 1
panPage 0 1
panPage 1 0
panPage 0 -1
panPage 0 -1
panPage 1 0
panPage 1 0
panPage 0 1
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 0 -1
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 0 -1
panPage 1 0
zoomOut
zoomOut
zoomOut
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage -1 0
panPage 0 1
panPage 0 1
fit
panPage 0 -1
panPage 0 1
panPage -1 0
panPage 1 0
