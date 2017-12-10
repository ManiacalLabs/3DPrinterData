EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L DB15_Female_HighDensity_MountingHoles J1
U 1 1 5A2C37B5
P 4150 2100
F 0 "J1" H 4150 2950 50  0000 C CNN
F 1 "DB15_Control" H 4150 2850 50  0000 C CNN
F 2 "custom:VGA_Female" H 3200 2500 50  0001 C CNN
F 3 "" H 3200 2500 50  0001 C CNN
	1    4150 2100
	0    1    1    0   
$EndComp
$Comp
L Conn_01x02 J2
U 1 1 5A2C38A8
P 3450 1350
F 0 "J2" H 3450 1450 50  0000 C CNN
F 1 "BL-2" H 3450 1150 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S02B-XH-A_02x2.50mm_Angled" H 3450 1350 50  0001 C CNN
F 3 "" H 3450 1350 50  0001 C CNN
	1    3450 1350
	0    1    1    0   
$EndComp
$Comp
L Conn_01x02 J4
U 1 1 5A2C38DD
P 3900 2950
F 0 "J4" H 3900 3050 50  0000 C CNN
F 1 "FAN_CTL" H 3900 2750 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 3900 2950 50  0001 C CNN
F 3 "" H 3900 2950 50  0001 C CNN
	1    3900 2950
	0    -1   -1   0   
$EndComp
$Comp
L Conn_01x02 J5
U 1 1 5A2C3900
P 4300 2950
F 0 "J5" H 4300 3050 50  0000 C CNN
F 1 "FAN_AO" H 4300 2750 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 4300 2950 50  0001 C CNN
F 3 "" H 4300 2950 50  0001 C CNN
	1    4300 2950
	0    -1   -1   0   
$EndComp
$Comp
L Conn_01x02 J6
U 1 1 5A2C3928
P 4750 2950
F 0 "J6" H 4750 3050 50  0000 C CNN
F 1 "EO" H 4750 2750 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 4750 2950 50  0001 C CNN
F 3 "" H 4750 2950 50  0001 C CNN
	1    4750 2950
	0    -1   -1   0   
$EndComp
$Comp
L Conn_01x03 J3
U 1 1 5A2C4585
P 4850 1350
F 0 "J3" H 4850 1550 50  0000 C CNN
F 1 "BL-3" H 4850 1150 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_S03B-XH-A_03x2.50mm_Angled" H 4850 1350 50  0001 C CNN
F 3 "" H 4850 1350 50  0001 C CNN
	1    4850 1350
	0    1    1    0   
$EndComp
$Comp
L Conn_01x06_Female J7
U 1 1 5A2C46D0
P 3950 1200
F 0 "J7" H 3950 1500 50  0000 C CNN
F 1 "Stepper" H 3950 800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.00mm" H 3950 1200 50  0001 C CNN
F 3 "" H 3950 1200 50  0001 C CNN
	1    3950 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 1800 3750 1400
Wire Wire Line
	3950 1800 3950 1400
Wire Wire Line
	4150 1800 4150 1500
Wire Wire Line
	4150 1500 4050 1500
Wire Wire Line
	4050 1500 4050 1400
Wire Wire Line
	4350 1800 4350 1500
Wire Wire Line
	4350 1500 4250 1500
Wire Wire Line
	4250 1500 4250 1400
$Comp
L Conn_01x02 J8
U 1 1 5A2C48EE
P 3450 2950
F 0 "J8" H 3450 3050 50  0000 C CNN
F 1 "HEAT" H 3450 2750 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 3450 2950 50  0001 C CNN
F 3 "" H 3450 2950 50  0001 C CNN
	1    3450 2950
	0    -1   -1   0   
$EndComp
Text GLabel 4550 1700 1    30   Input ~ 0
HEAT_+
Wire Wire Line
	4550 1700 4550 1800
Wire Wire Line
	3550 3200 3550 3150
Text GLabel 3850 1700 1    30   Input ~ 0
HEAT_-
Wire Wire Line
	3850 1700 3850 1800
Text GLabel 3450 3200 3    30   Input ~ 0
HEAT_+
Wire Wire Line
	3450 3200 3450 3150
Text GLabel 4050 1750 1    30   Input ~ 0
BL3_1
Wire Wire Line
	4050 1750 4050 1800
Text GLabel 4950 1100 1    30   Input ~ 0
BL3_1
Text GLabel 4250 1750 1    30   Input ~ 0
BL3_2
Text GLabel 4850 1100 1    30   Input ~ 0
BL3_2
Text GLabel 4450 1750 1    30   Input ~ 0
BL3_3
Text GLabel 4750 1100 1    30   Input ~ 0
BL3_3
Wire Wire Line
	4250 1750 4250 1800
Wire Wire Line
	4450 1750 4450 1800
Wire Wire Line
	4950 1100 4950 1150
Wire Wire Line
	4850 1100 4850 1150
Wire Wire Line
	4750 1100 4750 1150
Text GLabel 4650 1750 1    30   Input ~ 0
BL2_1
Text GLabel 3450 1100 1    30   Input ~ 0
BL2_1
Text GLabel 3750 2450 3    30   Input ~ 0
BL2_2
Text GLabel 3350 1100 1    30   Input ~ 0
BL2_2
Text GLabel 3550 3200 3    30   Input ~ 0
HEAT_-
Text GLabel 4150 2450 3    30   Input ~ 0
FAN_CTL_2
Text GLabel 4000 3200 3    30   Input ~ 0
FAN_CTL_2
Text GLabel 3950 2450 3    30   Input ~ 0
FAN_CTL_1
Text GLabel 3900 3200 3    30   Input ~ 0
FAN_CTL_1
Text GLabel 4550 2450 3    30   Input ~ 0
E0_1
Text GLabel 4750 3200 3    30   Input ~ 0
E0_1
Text GLabel 4350 2450 3    30   Input ~ 0
E0_2
Text GLabel 4850 3200 3    30   Input ~ 0
E0_2
Wire Wire Line
	4750 3150 4750 3200
Wire Wire Line
	4850 3200 4850 3150
Wire Wire Line
	4000 3150 4000 3200
Wire Wire Line
	3900 3150 3900 3200
Wire Wire Line
	3750 2400 3750 2450
Wire Wire Line
	3950 2450 3950 2400
Wire Wire Line
	4150 2400 4150 2450
Wire Wire Line
	4350 2450 4350 2400
Wire Wire Line
	4550 2400 4550 2450
Wire Wire Line
	4650 1750 4650 1800
Wire Wire Line
	3350 1100 3350 1150
Wire Wire Line
	3450 1150 3450 1100
Text GLabel 3400 2100 0    30   Input ~ 0
GND
Wire Wire Line
	3400 2100 3450 2100
Text GLabel 4400 3200 3    30   Input ~ 0
GND
Text GLabel 4300 3200 3    30   Input ~ 0
HEAT_+
Wire Wire Line
	4300 3200 4300 3150
Wire Wire Line
	4400 3150 4400 3200
NoConn ~ 3850 1400
NoConn ~ 4150 1400
$EndSCHEMATC
