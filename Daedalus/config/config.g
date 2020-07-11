G21						;Work in millimetres
G90						;Send absolute coordinates...
M83						;...but relative extruder moves

; Axis and motor configuration
M569 P0 S1					;Drive 0 X / Rear
M569 P1 S1					;Drive 1 Y / Front
M569 P2 S1					;Drive 2 Z Front Left
M569 P3 S1					;Drive 3 Z Rear Left
M569 P4 S1					;Drive 4 Z Right
M569 P5 S1					;Drive 5 Extruder
M667 S1						;corexy mode

M584 X0 Y1 Z2:3:4 E5			; Map X to drive 0 Y to drive 1, Z to drives 2, 3, 4, and E to drive 5
;Leadscrew locations
M671 X-38:-38:340  Y62.5:247.5:139 S7.5		;X -38, -38, 340

M350 X16 Y16 Z16 E16 I1				;set 16x microstepping for axes with interpolation
M906 X1400 Y1400 Z1200 E1500 I60			;Set motor currents (mA)
M201 X2000 Y2000 Z100 E1500			;Accelerations (mm/s^2)
M203 X24000 Y24000 Z900 E3600			;Maximum speeds (mm/min) was Z1800 tr8*4
M566 X1000 Y1000 Z100 E1500			;Maximum jerk speeds mm/minute E60 Z60
M208 X310 Y300 Z340				;set axis maxima and high homing switch positions (adjust to suit your machine)
M208 X0 Y0 Z-2 S1				;set axis minima and low homing switch positions (adjust to make X=0 and Y=0 the edges of the bed)
;M92 X200 Y200 Z1600 E819.5			;steps/mm
M92 X200 Y200 Z800 E830			;steps/mm 0.9 z


; End Stops
M574 X1 S1! P"io3.in"                ;Map the X endstop to io3.in
M574 Y2 S1! P"io1.in"                ;May the Y endstop to io1.in

; Thermistors
M308 S0 P"temp0" Y"thermistor" A"bed_heat" T100000 B4240 H0 L0 		;Bed thermistor - duet 3, connected to temp0

M308 S1 P"temp1" Y"thermistor" A"e0_heat" T100000 B4725 C7.06e-8 H0 L0	;duet3 e3d
;M308 S1 P"temp1" Y"thermistor" A"e0_heat" T500000 B4723 C1.196220e-7	;duet3 slice

;Define Heaters
M950 H0 C"out0" T0				;Bed heater is on out0
M950 H1 C"out1" T1				;Hotend heater is on out1

M307 H0 A90.0 C700.0 D10.0 S1.00 B1 		;Keenovo duet 3 configuration
M307 H1 A548.8 C298.6 D4.6 S1.00 B0 		;Hotend  duet 3 configuration

M570 S360					;Hot end may be a little slow to heat up so allow it 180 seconds
M143 S285					;Set max hotend temperature			

; Fans
M950 F0 C"out4"					;Hotend fan on "out4" connector
M106 P0 S255 H1 T50 				;enable thermostatic mode for hotend fan
M950 F1 C"out5"					;Layer fan on "out5" connector
M106 P1 S0 					;Layer Fan
M950 F2 C"out6"					;Layer fan on "out6" connector
M106 P2 S0 					;Layer Fan

; Tool definitions
M563 P0 D0 H1 F1:2                        	;Define tool 0
G10 P0 S0 R0                        		;Set tool 0 operating and standby temperatures

;BLTouch
;M558 P9 C"io7.in" H5 R1 F50 T6000 A5 S0.02 B1	;define the bltouch input on io8.in
;M950 S0 C"!io7.out"				;define the bltouch servo on io8.out"
;M950 S0 C"io7.out" ; create servo pin 0 for BLTouch
;M558 P9 C"io7.in" H10 F120 T3600 ; set Z probe type to bltouch and the dive height + speeds
;G31 X-10 Y66 Z3.1 P25 ; 				;set the offsets for the bltouch
;G31 X-10 Y66 Z3.5 P25

;EZ-ABL Pro Setup
M558 P5 C"!io7.in" I0 H10 F180 T3600 ; set Z probe type to bltouch and the dive height + speeds
G31 X-10 Y66 Z0.4 P25



M557 X66:250 Y66:250 S92

G29 S1; load mesh level

M501
M140 H0
T0						;select first hot end