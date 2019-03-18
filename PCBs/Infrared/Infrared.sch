EESchema Schematic File Version 4
LIBS:Infrared-cache
EELAYER 26 0
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
L Infrared-rescue:ESP-32S-Lighting_PCB U2
U 1 1 5BF3AADC
P 6500 3150
F 0 "U2" H 6475 4537 60  0000 C CNN
F 1 "ESP-32S" H 6475 4431 60  0000 C CNN
F 2 "ESP32:ESP32_DOIT_v1" H 6850 4500 60  0001 C CNN
F 3 "" H 6050 3600 60  0001 C CNN
	1    6500 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 5BF3B0AA
P 7400 2400
F 0 "#PWR07" H 7400 2250 50  0001 C CNN
F 1 "+5V" V 7415 2528 50  0000 L CNN
F 2 "" H 7400 2400 50  0001 C CNN
F 3 "" H 7400 2400 50  0001 C CNN
	1    7400 2400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5BF3B0DF
P 5550 2550
F 0 "#PWR06" H 5550 2300 50  0001 C CNN
F 1 "GND" V 5555 2422 50  0000 R CNN
F 2 "" H 5550 2550 50  0001 C CNN
F 3 "" H 5550 2550 50  0001 C CNN
	1    5550 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5BF3B79A
P 3650 3250
F 0 "R1" H 3720 3296 50  0000 L CNN
F 1 "2.6" H 3720 3205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3580 3250 50  0001 C CNN
F 3 "~" H 3650 3250 50  0001 C CNN
	1    3650 3250
	1    0    0    -1  
$EndComp
$Comp
L LED:IRL81A D1
U 1 1 5BF3B8FC
P 3150 3700
F 0 "D1" V 3146 3623 50  0000 R CNN
F 1 "IRL81A" V 3055 3623 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_IRGrey" H 3150 3875 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic0/00203825_0.pdf" H 3100 3700 50  0001 C CNN
	1    3150 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5BF3B9B0
P 4800 2750
F 0 "R2" V 4593 2750 50  0000 C CNN
F 1 "2.6" V 4684 2750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4730 2750 50  0001 C CNN
F 3 "~" H 4800 2750 50  0001 C CNN
	1    4800 2750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5BF3BBBF
P 3850 4400
F 0 "#PWR03" H 3850 4150 50  0001 C CNN
F 1 "GND" H 3855 4227 50  0000 C CNN
F 2 "" H 3850 4400 50  0001 C CNN
F 3 "" H 3850 4400 50  0001 C CNN
	1    3850 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PNP_CBE Q1
U 1 1 5BF3C193
P 3950 2750
F 0 "Q1" H 4141 2796 50  0000 L CNN
F 1 "Q_PNP_CBE" H 4141 2705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 4150 2850 50  0001 C CNN
F 3 "~" H 3950 2750 50  0001 C CNN
	1    3950 2750
	-1   0    0    1   
$EndComp
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U1
U 1 1 5BF3CC16
P 2550 2450
F 0 "U1" H 2550 2692 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 2550 2601 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2550 2650 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 2650 2200 50  0001 C CNN
	1    2550 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5BF3CD6C
P 1750 2450
F 0 "#PWR01" H 1750 2300 50  0001 C CNN
F 1 "+5V" V 1765 2578 50  0000 L CNN
F 2 "" H 1750 2450 50  0001 C CNN
F 3 "" H 1750 2450 50  0001 C CNN
	1    1750 2450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5BF3CDC2
P 2550 2850
F 0 "#PWR02" H 2550 2600 50  0001 C CNN
F 1 "GND" H 2555 2677 50  0000 C CNN
F 2 "" H 2550 2850 50  0001 C CNN
F 3 "" H 2550 2850 50  0001 C CNN
	1    2550 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5BF3D418
P 2900 2600
F 0 "C2" H 3015 2646 50  0000 L CNN
F 1 "10uF" H 3015 2555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2938 2450 50  0001 C CNN
F 3 "~" H 2900 2600 50  0001 C CNN
	1    2900 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2450 2200 2450
$Comp
L Device:C C1
U 1 1 5BF3DBED
P 2200 2600
F 0 "C1" H 2315 2646 50  0000 L CNN
F 1 "0.1uF" H 2315 2555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2238 2450 50  0001 C CNN
F 3 "~" H 2200 2600 50  0001 C CNN
	1    2200 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5550 2750 4950 2750
Wire Wire Line
	4650 2750 4150 2750
Wire Wire Line
	2850 2450 2900 2450
Wire Wire Line
	3850 2450 3850 2550
Wire Wire Line
	2550 2750 2550 2850
Wire Wire Line
	2900 2750 2900 2850
Wire Wire Line
	2900 2850 2550 2850
Connection ~ 2550 2850
Wire Wire Line
	2200 2750 2200 2850
Wire Wire Line
	2200 2850 2550 2850
Wire Wire Line
	3850 2950 3850 3100
Wire Wire Line
	2900 2450 3850 2450
Connection ~ 2900 2450
Wire Wire Line
	2200 2450 1750 2450
Connection ~ 2200 2450
$Comp
L Device:R R3
U 1 1 5C840A25
P 4050 3250
F 0 "R3" H 4120 3296 50  0000 L CNN
F 1 "2.6" H 4120 3205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3980 3250 50  0001 C CNN
F 3 "~" H 4050 3250 50  0001 C CNN
	1    4050 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3100 3850 3100
Wire Wire Line
	3850 3100 4050 3100
Connection ~ 3850 3100
$Comp
L LED:IRL81A D4
U 1 1 5C841488
P 3600 3700
F 0 "D4" V 3596 3623 50  0000 R CNN
F 1 "IRL81A" V 3505 3623 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_IRGrey" H 3600 3875 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic0/00203825_0.pdf" H 3550 3700 50  0001 C CNN
	1    3600 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 3400 3850 3400
$Comp
L LED:IRL81A D5
U 1 1 5C8416F4
P 4050 3700
F 0 "D5" V 4046 3623 50  0000 R CNN
F 1 "IRL81A" V 3955 3623 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_IRGrey" H 4050 3875 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic0/00203825_0.pdf" H 4000 3700 50  0001 C CNN
	1    4050 3700
	0    -1   -1   0   
$EndComp
$Comp
L LED:IRL81A D6
U 1 1 5C841936
P 4500 3700
F 0 "D6" V 4496 3623 50  0000 R CNN
F 1 "IRL81A" V 4405 3623 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_IRGrey" H 4500 3875 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic0/00203825_0.pdf" H 4450 3700 50  0001 C CNN
	1    4500 3700
	0    -1   -1   0   
$EndComp
$Comp
L LED:IRL81A D7
U 1 1 5C841B79
P 4950 3700
F 0 "D7" V 4946 3623 50  0000 R CNN
F 1 "IRL81A" V 4855 3623 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_IRGrey" H 4950 3875 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic0/00203825_0.pdf" H 4900 3700 50  0001 C CNN
	1    4950 3700
	0    -1   -1   0   
$EndComp
$Comp
L LED:IRL81A D3
U 1 1 5C841DB5
P 2700 3700
F 0 "D3" V 2696 3623 50  0000 R CNN
F 1 "IRL81A" V 2605 3623 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_IRGrey" H 2700 3875 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic0/00203825_0.pdf" H 2650 3700 50  0001 C CNN
	1    2700 3700
	0    -1   -1   0   
$EndComp
$Comp
L LED:IRL81A D2
U 1 1 5C841FF6
P 2250 3700
F 0 "D2" V 2246 3623 50  0000 R CNN
F 1 "IRL81A" V 2155 3623 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_IRGrey" H 2250 3875 50  0001 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic0/00203825_0.pdf" H 2200 3700 50  0001 C CNN
	1    2250 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 3600 2700 3600
Wire Wire Line
	2700 3600 3150 3600
Connection ~ 2700 3600
Wire Wire Line
	3150 3600 3600 3600
Connection ~ 3150 3600
Wire Wire Line
	3600 3600 3850 3600
Connection ~ 3600 3600
Wire Wire Line
	4050 3600 4500 3600
Connection ~ 4050 3600
Wire Wire Line
	4500 3600 4950 3600
Connection ~ 4500 3600
Wire Wire Line
	4950 3900 4500 3900
Wire Wire Line
	4500 3900 4050 3900
Connection ~ 4500 3900
Wire Wire Line
	4050 3900 3850 3900
Connection ~ 4050 3900
Wire Wire Line
	3600 3900 3150 3900
Connection ~ 3600 3900
Wire Wire Line
	3150 3900 2700 3900
Connection ~ 3150 3900
Wire Wire Line
	2700 3900 2250 3900
Connection ~ 2700 3900
Wire Wire Line
	3850 4400 3850 3900
Connection ~ 3850 3900
Wire Wire Line
	3850 3900 3600 3900
Wire Wire Line
	3850 3600 3850 3400
Connection ~ 3850 3600
Wire Wire Line
	3850 3600 4050 3600
Connection ~ 3850 3400
Wire Wire Line
	3850 3400 4050 3400
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 5C847D09
P 3500 1650
F 0 "J1" H 3606 2028 50  0000 C CNN
F 1 "Conn_01x05_Male" H 3606 1937 50  0000 C CNN
F 2 "MIcro_USB:PinHeader_1x05_P2.54mm_Vertical" H 3500 1650 50  0001 C CNN
F 3 "~" H 3500 1650 50  0001 C CNN
	1    3500 1650
	1    0    0    -1  
$EndComp
NoConn ~ 3700 1550
NoConn ~ 3700 1650
NoConn ~ 3700 1750
$Comp
L power:+5V #PWR0101
U 1 1 5C848EC5
P 3700 1450
F 0 "#PWR0101" H 3700 1300 50  0001 C CNN
F 1 "+5V" V 3715 1578 50  0000 L CNN
F 2 "" H 3700 1450 50  0001 C CNN
F 3 "" H 3700 1450 50  0001 C CNN
	1    3700 1450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5C848F1E
P 3700 1850
F 0 "#PWR0102" H 3700 1600 50  0001 C CNN
F 1 "GND" H 3705 1677 50  0000 C CNN
F 2 "" H 3700 1850 50  0001 C CNN
F 3 "" H 3700 1850 50  0001 C CNN
	1    3700 1850
	1    0    0    -1  
$EndComp
$Comp
L Infrared-rescue:SHT3X_Breakout_Board-SHT3X U3
U 1 1 5C8F5CEE
P 5550 4900
F 0 "U3" H 5400 4850 50  0000 L CNN
F 1 "SHT3X_Breakout_Board" H 5550 4850 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5950 5550 50  0001 C CNN
F 3 "" H 5950 5550 50  0001 C CNN
	1    5550 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0103
U 1 1 5C8F5FBF
P 5550 2450
F 0 "#PWR0103" H 5550 2300 50  0001 C CNN
F 1 "+3V3" V 5565 2578 50  0000 L CNN
F 2 "" H 5550 2450 50  0001 C CNN
F 3 "" H 5550 2450 50  0001 C CNN
	1    5550 2450
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 5C8F6026
P 5900 4250
F 0 "#PWR0104" H 5900 4100 50  0001 C CNN
F 1 "+3V3" H 5915 4423 50  0000 C CNN
F 2 "" H 5900 4250 50  0001 C CNN
F 3 "" H 5900 4250 50  0001 C CNN
	1    5900 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5C8F7315
P 5800 4250
F 0 "#PWR0105" H 5800 4000 50  0001 C CNN
F 1 "GND" V 5805 4122 50  0000 R CNN
F 2 "" H 5800 4250 50  0001 C CNN
F 3 "" H 5800 4250 50  0001 C CNN
	1    5800 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5800 4250 5800 4300
Wire Wire Line
	5900 4250 5900 4300
Wire Wire Line
	5600 4300 5350 4300
Wire Wire Line
	5350 4300 5350 3450
Wire Wire Line
	5350 3450 5550 3450
Wire Wire Line
	5700 4300 5700 4200
Wire Wire Line
	5700 4200 5450 4200
Wire Wire Line
	5450 4200 5450 3750
Wire Wire Line
	5450 3750 5550 3750
$Comp
L Mechanical:MountingHole H1
U 1 1 5C8FA4B1
P 8100 2200
F 0 "H1" H 8200 2246 50  0000 L CNN
F 1 "MountingHole" H 8200 2155 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 8100 2200 50  0001 C CNN
F 3 "~" H 8100 2200 50  0001 C CNN
	1    8100 2200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5C8FA539
P 8100 2450
F 0 "H2" H 8200 2496 50  0000 L CNN
F 1 "MountingHole" H 8200 2405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 8100 2450 50  0001 C CNN
F 3 "~" H 8100 2450 50  0001 C CNN
	1    8100 2450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5C8FA575
P 8100 2700
F 0 "H3" H 8200 2746 50  0000 L CNN
F 1 "MountingHole" H 8200 2655 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 8100 2700 50  0001 C CNN
F 3 "~" H 8100 2700 50  0001 C CNN
	1    8100 2700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5C8FA5BB
P 8100 2950
F 0 "H4" H 8200 2996 50  0000 L CNN
F 1 "MountingHole" H 8200 2905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 8100 2950 50  0001 C CNN
F 3 "~" H 8100 2950 50  0001 C CNN
	1    8100 2950
	1    0    0    -1  
$EndComp
Text GLabel 5350 4200 0    50   Input ~ 0
SDA
Text GLabel 5450 4050 2    50   Input ~ 0
SCL
$EndSCHEMATC
