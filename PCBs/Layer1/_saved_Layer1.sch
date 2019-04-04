EESchema Schematic File Version 4
LIBS:Layer1-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
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
L Layer1-rescue:STPM_STPM10BTR-Smart_Meter U1
U 1 1 5C84D460
P 7900 1800
F 0 "U1" H 7900 2515 50  0000 C CNN
F 1 "STPM_STPM10BTR" H 7900 2424 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 7850 1750 50  0001 C CNN
F 3 "" H 7850 1750 50  0001 C CNN
	1    7900 1800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5C84DC69
P 1000 1050
F 0 "J1" V 966 1130 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 875 1130 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1000 1050 50  0001 C CNN
F 3 "~" H 1000 1050 50  0001 C CNN
	1    1000 1050
	0    1    -1   0   
$EndComp
$Comp
L Device:Varistor RV1
U 1 1 5C84DE4B
P 1600 1700
F 0 "RV1" H 1703 1746 50  0000 L CNN
F 1 "Varistor" H 1703 1655 50  0000 L CNN
F 2 "Varistor:RV_Disc_D15.5mm_W5.9mm_P7.5mm" V 1530 1700 50  0001 C CNN
F 3 "~" H 1600 1700 50  0001 C CNN
	1    1600 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C84DF14
P 1450 2500
F 0 "R2" V 1243 2500 50  0000 C CNN
F 1 "220K" V 1334 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1380 2500 50  0001 C CNN
F 3 "~" H 1450 2500 50  0001 C CNN
	1    1450 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5C84DF78
P 1900 2500
F 0 "R3" V 1693 2500 50  0000 C CNN
F 1 "220K" V 1784 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1830 2500 50  0001 C CNN
F 3 "~" H 1900 2500 50  0001 C CNN
	1    1900 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5C84DFCD
P 2350 2500
F 0 "R4" V 2143 2500 50  0000 C CNN
F 1 "220K" V 2234 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2280 2500 50  0001 C CNN
F 3 "~" H 2350 2500 50  0001 C CNN
	1    2350 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5C84E161
P 3350 2800
F 0 "R5" H 3420 2846 50  0000 L CNN
F 1 "390" H 3420 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3280 2800 50  0001 C CNN
F 3 "~" H 3350 2800 50  0001 C CNN
	1    3350 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5C84E200
P 2700 2800
F 0 "R7" H 2770 2846 50  0000 L CNN
F 1 "43K" H 2770 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2630 2800 50  0001 C CNN
F 3 "~" H 2700 2800 50  0001 C CNN
	1    2700 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5C84E22A
P 4150 2800
F 0 "R6" H 4220 2846 50  0000 L CNN
F 1 "0R" H 4220 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 4080 2800 50  0001 C CNN
F 3 "~" H 4150 2800 50  0001 C CNN
	1    4150 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5C84E260
P 2700 3200
F 0 "R8" H 2770 3246 50  0000 L CNN
F 1 "100" H 2770 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2630 3200 50  0001 C CNN
F 3 "~" H 2700 3200 50  0001 C CNN
	1    2700 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5C84E2D2
P 4150 3200
F 0 "C7" H 4265 3246 50  0000 L CNN
F 1 "22nF" H 4265 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4188 3050 50  0001 C CNN
F 3 "~" H 4150 3200 50  0001 C CNN
	1    4150 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2500 1300 2500
Wire Wire Line
	1600 2500 1750 2500
Wire Wire Line
	2050 2500 2200 2500
Wire Wire Line
	3350 2500 3350 2650
Wire Wire Line
	3350 2950 3350 3500
Wire Wire Line
	2700 2650 2700 2500
Wire Wire Line
	2700 3350 2700 3500
Wire Wire Line
	4150 2500 4150 2650
Wire Wire Line
	4150 2950 4150 3050
Wire Wire Line
	4150 3350 4150 3500
Text Label 1000 1300 1    50   ~ 0
L
Text Label 900  1300 1    50   ~ 0
N
Wire Wire Line
	1000 1250 1000 1550
Wire Wire Line
	900  1250 900  1850
Wire Wire Line
	1600 1550 1000 1550
Connection ~ 1000 1550
Wire Wire Line
	1000 1550 1000 2500
Wire Wire Line
	1600 1850 900  1850
Connection ~ 900  1850
Wire Wire Line
	900  1850 900  3500
$Comp
L Connector:TestPoint TP1
U 1 1 5C8542DF
P 4400 2500
F 0 "TP1" H 4458 2574 50  0000 L CNN
F 1 "TestPoint" H 4458 2529 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_2.0x2.0mm_Drill1.0mm" H 4600 2500 50  0001 C CNN
F 3 "~" H 4600 2500 50  0001 C CNN
	1    4400 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5C8547EA
P 4400 3500
F 0 "TP2" H 4458 3620 50  0000 L CNN
F 1 "TestPoint" H 4458 3529 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_2.0x2.0mm_Drill1.0mm" H 4600 3500 50  0001 C CNN
F 3 "~" H 4600 3500 50  0001 C CNN
	1    4400 3500
	1    0    0    -1  
$EndComp
Text GLabel 4800 2500 2    50   Input ~ 0
V_IP
Text GLabel 4800 3500 2    50   Input ~ 0
V_IN
Text GLabel 9350 2050 2    50   Input ~ 0
V_IP
Text GLabel 9350 1950 2    50   Input ~ 0
V_IN
$Comp
L Layer1-rescue:T60404-E4624-X501-Meter T1
U 1 1 5C859B72
P 900 4700
F 0 "T1" H 950 4700 50  0000 L CNN
F 1 "T60404-E4624-X501" H 950 4600 50  0001 L CNN
F 2 "CT:T60404-E4624-X501" H 850 4750 50  0001 C CNN
F 3 "" H 850 4750 50  0001 C CNN
	1    900  4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5C85AA81
P 900 5300
F 0 "R14" H 970 5346 50  0000 L CNN
F 1 "0R" H 970 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 830 5300 50  0001 C CNN
F 3 "~" H 900 5300 50  0001 C CNN
	1    900  5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5000 900  5150
$Comp
L Device:R R11
U 1 1 5C85B90F
P 1550 4700
F 0 "R11" H 1620 4746 50  0000 L CNN
F 1 "4.7" H 1620 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1480 4700 50  0001 C CNN
F 3 "~" H 1550 4700 50  0001 C CNN
	1    1550 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5C85BD41
P 1900 4700
F 0 "R12" H 1970 4746 50  0000 L CNN
F 1 "4.7" H 1970 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1830 4700 50  0001 C CNN
F 3 "~" H 1900 4700 50  0001 C CNN
	1    1900 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5C85BDBA
P 2450 4400
F 0 "R10" V 2243 4400 50  0000 C CNN
F 1 "1K" V 2334 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2380 4400 50  0001 C CNN
F 3 "~" H 2450 4400 50  0001 C CNN
	1    2450 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5C85BE4C
P 2450 5000
F 0 "R13" V 2243 5000 50  0000 C CNN
F 1 "1K" V 2334 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 2380 5000 50  0001 C CNN
F 3 "~" H 2450 5000 50  0001 C CNN
	1    2450 5000
	0    1    1    0   
$EndComp
$Comp
L Device:C C8
U 1 1 5C85BF49
P 2900 4700
F 0 "C8" H 3015 4746 50  0000 L CNN
F 1 "10nF" H 3015 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2938 4550 50  0001 C CNN
F 3 "~" H 2900 4700 50  0001 C CNN
	1    2900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  4400 1550 4400
Wire Wire Line
	1550 4400 1900 4400
Connection ~ 1550 4400
Wire Wire Line
	900  5000 1550 5000
Wire Wire Line
	1550 5000 1900 5000
Connection ~ 1550 5000
Wire Wire Line
	1900 4400 2300 4400
Connection ~ 1900 4400
Wire Wire Line
	1900 5000 2300 5000
Connection ~ 1900 5000
Wire Wire Line
	2600 4400 2900 4400
Wire Wire Line
	2600 5000 2900 5000
Wire Wire Line
	900  3500 2700 3500
Connection ~ 2700 3500
Text GLabel 4800 4400 2    50   Input ~ 0
I_IP1
Text GLabel 4800 5000 2    50   Input ~ 0
I_IN1
Connection ~ 2900 4400
Connection ~ 2900 5000
$Comp
L Connector:TestPoint TP3
U 1 1 5C8686B2
P 4050 4400
F 0 "TP3" H 4108 4520 50  0000 L CNN
F 1 "TestPoint" H 4108 4429 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_2.0x2.0mm_Drill1.0mm" H 4250 4400 50  0001 C CNN
F 3 "~" H 4250 4400 50  0001 C CNN
	1    4050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4400 2900 4400
$Comp
L Connector:TestPoint TP4
U 1 1 5C8687AE
P 4050 5000
F 0 "TP4" H 4108 5120 50  0000 L CNN
F 1 "TestPoint" H 4108 5029 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_2.0x2.0mm_Drill1.0mm" H 4250 5000 50  0001 C CNN
F 3 "~" H 4250 5000 50  0001 C CNN
	1    4050 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5C86935E
P 3250 4000
F 0 "R9" H 3320 4046 50  0000 L CNN
F 1 "2M" H 3320 3955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3180 4000 50  0001 C CNN
F 3 "~" H 3250 4000 50  0001 C CNN
	1    3250 4000
	1    0    0    -1  
$EndComp
Text GLabel 7300 2150 0    50   Input ~ 0
I_IP1
Text GLabel 7300 2250 0    50   Input ~ 0
I_IN1
$Comp
L power:+5V #PWR04
U 1 1 5C87424C
P 5950 1750
F 0 "#PWR04" H 5950 1600 50  0001 C CNN
F 1 "+5V" H 5965 1923 50  0000 C CNN
F 2 "" H 5950 1750 50  0001 C CNN
F 3 "" H 5950 1750 50  0001 C CNN
	1    5950 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1750 5950 1850
$Comp
L Device:C_Small C5
U 1 1 5C880674
P 6300 2150
F 0 "C5" H 6208 2104 50  0000 R CNN
F 1 "1uF" H 6208 2195 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6300 2150 50  0001 C CNN
F 3 "~" H 6300 2150 50  0001 C CNN
	1    6300 2150
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5C880713
P 6650 2150
F 0 "C6" H 6558 2104 50  0000 R CNN
F 1 "1uF" H 6558 2195 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6650 2150 50  0001 C CNN
F 3 "~" H 6650 2150 50  0001 C CNN
	1    6650 2150
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5C880763
P 5950 2150
F 0 "C4" H 6042 2196 50  0000 L CNN
F 1 "1uF" H 6042 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5950 2150 50  0001 C CNN
F 3 "~" H 5950 2150 50  0001 C CNN
	1    5950 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1850 5950 2050
Wire Wire Line
	7450 1950 6300 1950
Wire Wire Line
	6300 1950 6300 2050
Wire Wire Line
	7450 2050 6650 2050
Connection ~ 5950 1850
Wire Wire Line
	5950 1850 7450 1850
Wire Wire Line
	6200 1750 7450 1750
$Comp
L Device:C_Small C3
U 1 1 5C8871A8
P 5600 2150
F 0 "C3" H 5692 2196 50  0000 L CNN
F 1 "1uF" H 5692 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5600 2150 50  0001 C CNN
F 3 "~" H 5600 2150 50  0001 C CNN
	1    5600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 1650 6400 1650
Wire Wire Line
	6400 1650 6400 1450
Wire Wire Line
	6400 1450 5600 1450
Wire Wire Line
	5600 1450 5600 2050
Wire Wire Line
	6650 2250 6650 2350
Wire Wire Line
	6650 2350 6300 2350
Wire Wire Line
	5600 2350 5600 2250
Connection ~ 6650 2350
Wire Wire Line
	6650 2350 6650 2450
Wire Wire Line
	5950 2350 5950 2250
Connection ~ 5950 2350
Wire Wire Line
	5950 2350 5600 2350
Wire Wire Line
	6300 2350 6300 2250
Connection ~ 6300 2350
Wire Wire Line
	6300 2350 5950 2350
Wire Wire Line
	900  4500 900  4400
Wire Wire Line
	900  5000 900  4900
Connection ~ 900  5000
Wire Wire Line
	1550 4400 1550 4550
Wire Wire Line
	1550 4850 1550 5000
Wire Wire Line
	1900 4850 1900 5000
Wire Wire Line
	1900 4400 1900 4550
Wire Wire Line
	2900 4400 2900 4550
Wire Wire Line
	2900 4850 2900 5000
Wire Wire Line
	3250 4150 3250 5000
Wire Wire Line
	900  5450 900  5650
$Comp
L Device:Crystal Y1
U 1 1 5C8AB9A1
P 10150 2000
F 0 "Y1" H 10150 2268 50  0000 C CNN
F 1 "4.194304 MHz" H 10150 2177 50  0000 C CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 10150 2000 50  0001 C CNN
F 3 "~" H 10150 2000 50  0001 C CNN
	1    10150 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C8ABAFC
P 10150 2400
F 0 "R1" V 9943 2400 50  0000 C CNN
F 1 "1M" V 10034 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 10080 2400 50  0001 C CNN
F 3 "~" H 10150 2400 50  0001 C CNN
	1    10150 2400
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5C8ABC0E
P 9850 2700
F 0 "C1" H 9965 2746 50  0000 L CNN
F 1 "22pF" H 9965 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9888 2550 50  0001 C CNN
F 3 "~" H 9850 2700 50  0001 C CNN
	1    9850 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5C8AC182
P 10450 2700
F 0 "C2" H 10565 2746 50  0000 L CNN
F 1 "22pF" H 10565 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10488 2550 50  0001 C CNN
F 3 "~" H 10450 2700 50  0001 C CNN
	1    10450 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2550 9850 2400
Wire Wire Line
	9850 2400 10000 2400
Wire Wire Line
	10300 2400 10450 2400
Wire Wire Line
	10450 2400 10450 2550
Wire Wire Line
	9850 2850 9850 3000
Wire Wire Line
	10450 3000 10450 2850
Wire Wire Line
	9850 2400 9850 2000
Wire Wire Line
	9850 2000 10000 2000
Connection ~ 9850 2400
Wire Wire Line
	10450 2400 10450 2000
Wire Wire Line
	10450 2000 10300 2000
Connection ~ 10450 2400
Connection ~ 9850 2000
Wire Wire Line
	10450 2000 10450 1650
Connection ~ 10450 2000
$Comp
L Device:LED D1
U 1 1 5C8CDAD7
P 9750 1350
F 0 "D1" H 9742 1095 50  0000 C CNN
F 1 "LED" H 9742 1186 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9750 1350 50  0001 C CNN
F 3 "~" H 9750 1350 50  0001 C CNN
	1    9750 1350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 5C8D2EB6
P 9350 1350
F 0 "R15" V 9557 1350 50  0000 C CNN
F 1 "2.4K" V 9466 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9280 1350 50  0001 C CNN
F 3 "~" H 9350 1350 50  0001 C CNN
	1    9350 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5C8D81C8
P 10200 1350
F 0 "#PWR01" H 10200 1100 50  0001 C CNN
F 1 "GND" V 10205 1222 50  0000 R CNN
F 2 "" H 10200 1350 50  0001 C CNN
F 3 "" H 10200 1350 50  0001 C CNN
	1    10200 1350
	0    -1   -1   0   
$EndComp
Text GLabel 10950 1450 2    50   Input ~ 0
STPM10_SDA
Text GLabel 10950 1550 2    50   Input ~ 0
STPM10_SCL
Text GLabel 10950 3450 2    50   Input ~ 0
STPM10_SYN
Text GLabel 7000 1550 0    50   Input ~ 0
STPM10_SCS
Wire Wire Line
	7300 1550 7450 1550
Wire Wire Line
	7300 2150 7450 2150
Wire Wire Line
	7300 2250 7450 2250
$Comp
L Layer1-rescue:DOIT_ESP32_Devkit_v1-MCU_Module_Custom-Control U4
U 1 1 5C8FB8E7
P 4850 10150
F 0 "U4" H 5150 10615 50  0000 C CNN
F 1 "DOIT_ESP32_Devkit_v1-MCU_Module_Custom" H 5150 10524 50  0000 C CNN
F 2 "ESP32:ESP32_DOIT_v1" H 4850 10150 50  0001 C CNN
F 3 "" H 4850 10150 50  0001 C CNN
	1    4850 10150
	-1   0    0    1   
$EndComp
Wire Wire Line
	9500 1350 9600 1350
Wire Wire Line
	9900 1350 10200 1350
$Comp
L Layer1-rescue:level_shifter-Level_shifter U2
U 1 1 5C90F266
P 6600 9400
F 0 "U2" H 6625 9915 50  0000 C CNN
F 1 "level_shifter" H 6625 9824 50  0000 C CNN
F 2 "levelshifter:levelshiter" H 6600 9850 50  0001 C CNN
F 3 "" H 6600 9850 50  0001 C CNN
	1    6600 9400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 8950 5100 8950
Wire Wire Line
	4000 8950 3850 8950
$Comp
L power:+3V3 #PWR017
U 1 1 5C9181FC
P 6150 9450
F 0 "#PWR017" H 6150 9300 50  0001 C CNN
F 1 "+3V3" V 6165 9578 50  0000 L CNN
F 2 "" H 6150 9450 50  0001 C CNN
F 3 "" H 6150 9450 50  0001 C CNN
	1    6150 9450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 9450 6300 9450
Wire Wire Line
	6150 9350 6300 9350
Text GLabel 7100 9550 2    50   Input ~ 0
STPM10_SYN
Text GLabel 7100 9250 2    50   Input ~ 0
STPM10_SCL
Text GLabel 7100 9150 2    50   Input ~ 0
STPM10_SDA
Text GLabel 7100 9650 2    50   Input ~ 0
STPM10_SCS
Wire Wire Line
	6950 9150 7100 9150
Wire Wire Line
	6950 9250 7100 9250
Wire Wire Line
	6950 9550 7100 9550
Wire Wire Line
	6950 9650 7100 9650
NoConn ~ 5100 9250
NoConn ~ 5100 9550
Wire Wire Line
	5250 8950 5250 8800
$Comp
L Connector_Generic:Conn_01x12 J2
U 1 1 5C9C4860
P 9150 9750
F 0 "J2" V 9274 9696 50  0000 C CNN
F 1 "Conn_01x12" V 9365 9696 50  0000 C CNN
F 2 "Connector_JST:JST_PH_B12B-PH-K_1x12_P2.00mm_Vertical" H 9150 9750 50  0001 C CNN
F 3 "~" H 9150 9750 50  0001 C CNN
	1    9150 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 9250 8850 9250
Wire Wire Line
	8850 9250 8850 9150
$Comp
L Layer1-rescue:Micro_SD_Shield-SD_Card U3
U 1 1 5CA3C928
P 1550 9850
F 0 "U3" H 1500 10515 50  0000 C CNN
F 1 "Micro_SD_Shield" H 1500 10424 50  0000 C CNN
F 2 "SDCard:sdcard" H 1600 10500 50  0001 C CNN
F 3 "" H 1600 10500 50  0001 C CNN
	1    1550 9850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4000 10350 3500 10350
Wire Wire Line
	3500 9950 3500 10350
Text GLabel 3900 9950 0    50   Input ~ 0
B1
Text GLabel 3900 10250 0    50   Input ~ 0
B2
Wire Wire Line
	3900 9950 4000 9950
Wire Wire Line
	3900 10250 4000 10250
$Comp
L power:+3V3 #PWR020
U 1 1 5CAA1515
P 2350 10850
F 0 "#PWR020" H 2350 10700 50  0001 C CNN
F 1 "+3V3" H 2365 11023 50  0000 C CNN
F 2 "" H 2350 10850 50  0001 C CNN
F 3 "" H 2350 10850 50  0001 C CNN
	1    2350 10850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 10150 2350 10150
Wire Wire Line
	950  10050 800  10050
Wire Wire Line
	800  10050 800  10150
Text GLabel 3900 9450 0    50   Input ~ 0
ESP32_RX
Text GLabel 3900 9550 0    50   Input ~ 0
ESP32_TX
Text GLabel 5200 9850 2    50   Input ~ 0
B3
Text GLabel 5200 9750 2    50   Input ~ 0
B4
Wire Wire Line
	5100 9850 5200 9850
Wire Wire Line
	5100 9750 5200 9750
Wire Wire Line
	3900 9450 4000 9450
Wire Wire Line
	3900 9550 4000 9550
Text GLabel 8500 1200 2    50   Input ~ 0
STPM10_LED
Wire Wire Line
	8350 1350 8450 1350
Wire Wire Line
	8500 1200 8450 1200
Wire Wire Line
	8450 1200 8450 1350
Connection ~ 8450 1350
Wire Wire Line
	8450 1350 9100 1350
Text GLabel 8700 9550 0    50   Input ~ 0
ESP32_TX
Text GLabel 8700 9450 0    50   Input ~ 0
ESP32_RX
Wire Wire Line
	8700 9450 8950 9450
Wire Wire Line
	8700 9550 8950 9550
Text GLabel 8700 9650 0    50   Input ~ 0
B1
Text GLabel 8700 9750 0    50   Input ~ 0
B2
Text GLabel 8700 9850 0    50   Input ~ 0
B3
Text GLabel 8700 9950 0    50   Input ~ 0
B4
Wire Wire Line
	8950 9650 8700 9650
Wire Wire Line
	8950 9750 8700 9750
Wire Wire Line
	8950 9850 8700 9850
Wire Wire Line
	8950 9950 8700 9950
Wire Wire Line
	8600 9150 8600 9350
Wire Wire Line
	8950 9350 8600 9350
NoConn ~ 4000 9050
NoConn ~ 4000 9150
NoConn ~ 4000 9250
NoConn ~ 4000 9350
NoConn ~ 4000 10050
NoConn ~ 4000 10150
NoConn ~ 5100 10350
NoConn ~ 5100 10250
NoConn ~ 5100 10150
NoConn ~ 5100 10050
NoConn ~ 5100 9950
NoConn ~ 2250 9650
NoConn ~ 2250 9550
NoConn ~ 2250 9450
NoConn ~ 950  10150
NoConn ~ 950  9950
NoConn ~ 950  9850
NoConn ~ 950  9750
NoConn ~ 950  9650
NoConn ~ 950  9550
NoConn ~ 8950 10050
$Comp
L Mechanical:MountingHole H1
U 1 1 5C866514
P 14450 850
F 0 "H1" H 14550 896 50  0000 L CNN
F 1 "MountingHole" H 14550 805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965" H 14450 850 50  0001 C CNN
F 3 "~" H 14450 850 50  0001 C CNN
	1    14450 850 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5C86669F
P 14450 1050
F 0 "H2" H 14550 1096 50  0000 L CNN
F 1 "MountingHole" H 14550 1005 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965" H 14450 1050 50  0001 C CNN
F 3 "~" H 14450 1050 50  0001 C CNN
	1    14450 1050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5C86670F
P 14450 1250
F 0 "H3" H 14550 1296 50  0000 L CNN
F 1 "MountingHole" H 14550 1205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965" H 14450 1250 50  0001 C CNN
F 3 "~" H 14450 1250 50  0001 C CNN
	1    14450 1250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5C86677B
P 14450 1450
F 0 "H4" H 14550 1496 50  0000 L CNN
F 1 "MountingHole" H 14550 1405 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965" H 14450 1450 50  0001 C CNN
F 3 "~" H 14450 1450 50  0001 C CNN
	1    14450 1450
	1    0    0    -1  
$EndComp
NoConn ~ 7450 1450
NoConn ~ 7450 1350
NoConn ~ 8950 10150
NoConn ~ 8950 10250
$Comp
L Device:R R16
U 1 1 5C8927AD
P 2750 10600
F 0 "R16" V 2650 10450 50  0000 L CNN
F 1 "10K" V 2650 10600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2680 10600 50  0001 C CNN
F 3 "~" H 2750 10600 50  0001 C CNN
	1    2750 10600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5C89393D
P 2950 10600
F 0 "R17" V 2850 10450 50  0000 L CNN
F 1 "10K" V 2850 10600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2880 10600 50  0001 C CNN
F 3 "~" H 2950 10600 50  0001 C CNN
	1    2950 10600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5C8939B1
P 3150 10600
F 0 "R18" V 3050 10450 50  0000 L CNN
F 1 "10K" V 3050 10600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3080 10600 50  0001 C CNN
F 3 "~" H 3150 10600 50  0001 C CNN
	1    3150 10600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 5C893A1F
P 3350 10600
F 0 "R19" V 3250 10450 50  0000 L CNN
F 1 "10K" V 3250 10600 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3280 10600 50  0001 C CNN
F 3 "~" H 3350 10600 50  0001 C CNN
	1    3350 10600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 9950 3350 9950
Wire Wire Line
	2250 9850 3150 9850
Wire Wire Line
	2250 9750 2950 9750
Wire Wire Line
	2600 10050 2600 9650
Wire Wire Line
	2250 10050 2600 10050
Wire Wire Line
	2600 9650 2750 9650
Wire Wire Line
	2350 10150 2350 10800
Wire Wire Line
	2350 10800 2750 10800
Wire Wire Line
	3350 10800 3350 10750
Connection ~ 2350 10800
Wire Wire Line
	2350 10800 2350 10850
Wire Wire Line
	3150 10750 3150 10800
Connection ~ 3150 10800
Wire Wire Line
	3150 10800 3350 10800
Wire Wire Line
	2950 10750 2950 10800
Connection ~ 2950 10800
Wire Wire Line
	2950 10800 3150 10800
Wire Wire Line
	2750 10750 2750 10800
Connection ~ 2750 10800
Wire Wire Line
	2750 10800 2950 10800
Wire Wire Line
	2750 10450 2750 9650
Connection ~ 2750 9650
Wire Wire Line
	2750 9650 4000 9650
Wire Wire Line
	2950 10450 2950 9750
Connection ~ 2950 9750
Wire Wire Line
	2950 9750 4000 9750
Wire Wire Line
	3150 10450 3150 9850
Connection ~ 3150 9850
Wire Wire Line
	3150 9850 4000 9850
Wire Wire Line
	3350 10450 3350 9950
Connection ~ 3350 9950
Wire Wire Line
	3350 9950 3500 9950
Text Label 4000 9850 2    50   ~ 0
MISO
Text Label 4000 9750 2    50   ~ 0
CLK
Text Label 4000 9650 2    50   ~ 0
CS
Text Label 4000 10350 2    50   ~ 0
MOSI
NoConn ~ 950  9450
Wire Wire Line
	8350 1950 9350 1950
Wire Wire Line
	8350 2050 9350 2050
$Comp
L power:+5V #PWR0101
U 1 1 5C89DC82
P 8700 2950
F 0 "#PWR0101" H 8700 2800 50  0001 C CNN
F 1 "+5V" H 8715 3123 50  0000 C CNN
F 2 "" H 8700 2950 50  0001 C CNN
F 3 "" H 8700 2950 50  0001 C CNN
	1    8700 2950
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 5C8AF42E
P 8700 2750
F 0 "D2" V 8700 2848 50  0000 L CNN
F 1 "LED_Small" V 8745 2848 50  0001 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8700 2750 50  0001 C CNN
F 3 "~" V 8700 2750 50  0001 C CNN
	1    8700 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R20
U 1 1 5C8AF6AA
P 8700 2500
F 0 "R20" H 8759 2546 50  0000 L CNN
F 1 "6.8K" H 8759 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8700 2500 50  0001 C CNN
F 3 "~" H 8700 2500 50  0001 C CNN
	1    8700 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2900 8700 2850
Wire Wire Line
	8700 2650 8700 2600
$Comp
L Device:LED_Small D3
U 1 1 5C8C88DC
P 9000 2750
F 0 "D3" V 9000 2848 50  0000 L CNN
F 1 "LED_Small" V 9045 2848 50  0001 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9000 2750 50  0001 C CNN
F 3 "~" V 9000 2750 50  0001 C CNN
	1    9000 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R21
U 1 1 5C8C88E3
P 9000 2500
F 0 "R21" H 9059 2546 50  0000 L CNN
F 1 "6.8K" H 9059 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9000 2500 50  0001 C CNN
F 3 "~" H 9000 2500 50  0001 C CNN
	1    9000 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2650 9000 2600
$Comp
L Device:LED_Small D4
U 1 1 5C8D0B6D
P 9300 2750
F 0 "D4" V 9300 2848 50  0000 L CNN
F 1 "LED_Small" V 9345 2848 50  0001 L CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9300 2750 50  0001 C CNN
F 3 "~" V 9300 2750 50  0001 C CNN
	1    9300 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R22
U 1 1 5C8D0B74
P 9300 2500
F 0 "R22" H 9359 2546 50  0000 L CNN
F 1 "6.8K" H 9359 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9300 2500 50  0001 C CNN
F 3 "~" H 9300 2500 50  0001 C CNN
	1    9300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2650 9300 2600
Wire Wire Line
	8700 2900 9000 2900
Wire Wire Line
	9000 2900 9000 2850
Connection ~ 8700 2900
Wire Wire Line
	9000 2900 9300 2900
Wire Wire Line
	9300 2900 9300 2850
Connection ~ 9000 2900
Wire Wire Line
	8700 2400 8700 1850
Wire Wire Line
	9000 2400 9000 2300
Wire Wire Line
	9000 2300 8750 2300
Wire Wire Line
	8750 2300 8750 1550
Wire Wire Line
	9300 2400 9300 2250
Wire Wire Line
	9300 2250 8800 2250
Wire Wire Line
	8800 2250 8800 1450
Wire Wire Line
	8700 2950 8700 2900
Connection ~ 8700 1850
Connection ~ 8750 1550
Connection ~ 8800 1450
Wire Wire Line
	8350 1450 8800 1450
Wire Wire Line
	8350 1550 8750 1550
Wire Wire Line
	8350 1850 8700 1850
$Comp
L Device:C C10
U 1 1 5C8C30BE
P 2250 1700
F 0 "C10" H 2365 1746 50  0000 L CNN
F 1 "1nF" H 2365 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1806_4516Metric_Pad1.57x1.80mm_HandSolder" H 2288 1550 50  0001 C CNN
F 3 "~" H 2250 1700 50  0001 C CNN
	1    2250 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5C8C3301
P 2000 1550
F 0 "L1" V 2190 1550 50  0000 C CNN
F 1 "220uH" V 2099 1550 50  0000 C CNN
F 2 "Inductor_SMD:L_1812_4532Metric_Pad1.30x3.40mm_HandSolder" H 2000 1550 50  0001 C CNN
F 3 "~" H 2000 1550 50  0001 C CNN
	1    2000 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R23
U 1 1 5C8C3626
P 2500 1550
F 0 "R23" V 2293 1550 50  0000 C CNN
F 1 "82R 2W" V 2384 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0617_L17.0mm_D6.0mm_P20.32mm_Horizontal" V 2430 1550 50  0001 C CNN
F 3 "~" H 2500 1550 50  0001 C CNN
	1    2500 1550
	0    1    1    0   
$EndComp
$Comp
L Device:C C9
U 1 1 5C8C37C8
P 2900 1550
F 0 "C9" V 2648 1550 50  0000 C CNN
F 1 "470nF 630V" V 2739 1550 50  0000 C CNN
F 2 "Layer1:C_Rect_L26.5mm_W15.5mm_P22.50mm_MKS4" H 2938 1400 50  0001 C CNN
F 3 "~" H 2900 1550 50  0001 C CNN
	1    2900 1550
	0    1    1    0   
$EndComp
$Comp
L Device:D D6
U 1 1 5C8C3C35
P 3150 1700
F 0 "D6" V 3104 1779 50  0000 L CNN
F 1 "600V 1A" V 3195 1779 50  0000 L CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 3150 1700 50  0001 C CNN
F 3 "~" H 3150 1700 50  0001 C CNN
	1    3150 1700
	0    1    1    0   
$EndComp
$Comp
L Device:D D5
U 1 1 5C8C3D88
P 3400 1550
F 0 "D5" H 3400 1334 50  0000 C CNN
F 1 "600V 1A" H 3400 1425 50  0000 C CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 3400 1550 50  0001 C CNN
F 3 "~" H 3400 1550 50  0001 C CNN
	1    3400 1550
	-1   0    0    1   
$EndComp
$Comp
L Device:CP C11
U 1 1 5C8C4107
P 3650 1700
F 0 "C11" H 3768 1746 50  0000 L CNN
F 1 "4700uF" H 3768 1655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D12.5mm_P5.00mm" H 3688 1550 50  0001 C CNN
F 3 "~" H 3650 1700 50  0001 C CNN
	1    3650 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D7
U 1 1 5C8E9FF8
P 4150 1700
F 0 "D7" V 4104 1779 50  0000 L CNN
F 1 "5.1V" V 4195 1779 50  0000 L CNN
F 2 "Layer1:SOD-80" H 4150 1700 50  0001 C CNN
F 3 "~" H 4150 1700 50  0001 C CNN
	1    4150 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 1550 1850 1550
Connection ~ 1600 1550
Wire Wire Line
	2150 1550 2250 1550
Wire Wire Line
	2250 1550 2350 1550
Connection ~ 2250 1550
Wire Wire Line
	2650 1550 2750 1550
Wire Wire Line
	3050 1550 3150 1550
Wire Wire Line
	3150 1550 3250 1550
Connection ~ 3150 1550
Wire Wire Line
	3550 1550 3650 1550
Wire Wire Line
	3650 1550 4150 1550
Connection ~ 3650 1550
Wire Wire Line
	3150 1850 2250 1850
Connection ~ 3150 1850
Wire Wire Line
	2250 1850 1600 1850
Connection ~ 2250 1850
Connection ~ 1600 1850
$Comp
L power:+5V #PWR02
U 1 1 5C96F276
P 5150 1450
F 0 "#PWR02" H 5150 1300 50  0001 C CNN
F 1 "+5V" H 5165 1623 50  0000 C CNN
F 2 "" H 5150 1450 50  0001 C CNN
F 3 "" H 5150 1450 50  0001 C CNN
	1    5150 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1550 5150 1450
Connection ~ 4150 1550
$Comp
L Device:L L2
U 1 1 5C985D5E
P 4700 1850
F 0 "L2" V 4890 1850 50  0000 C CNN
F 1 "1uH" V 4799 1850 50  0000 C CNN
F 2 "Inductor_SMD:L_1812_4532Metric_Pad1.30x3.40mm_HandSolder" H 4700 1850 50  0001 C CNN
F 3 "~" H 4700 1850 50  0001 C CNN
	1    4700 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 3500 2700 3650
Connection ~ 4400 3500
Connection ~ 4400 2500
Wire Wire Line
	2900 5000 3250 5000
Wire Wire Line
	2500 2500 2700 2500
Wire Wire Line
	2700 2950 2700 3000
Connection ~ 2700 2500
Wire Wire Line
	2700 2500 3350 2500
Wire Wire Line
	2700 3500 3350 3500
Connection ~ 3250 5000
Wire Wire Line
	3250 5000 4050 5000
Wire Wire Line
	3250 3000 2700 3000
Connection ~ 2700 3000
Wire Wire Line
	2700 3000 2700 3050
Connection ~ 3350 3500
Wire Wire Line
	4150 2500 4400 2500
Connection ~ 4150 3500
Wire Wire Line
	4150 3500 4400 3500
Wire Wire Line
	3350 3500 4150 3500
$Comp
L Device:R R24
U 1 1 5C922934
P 3750 2500
F 0 "R24" V 3543 2500 50  0000 C CNN
F 1 "0R" V 3634 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 3680 2500 50  0001 C CNN
F 3 "~" H 3750 2500 50  0001 C CNN
	1    3750 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 2500 3600 2500
Connection ~ 3350 2500
Wire Wire Line
	3900 2500 4150 2500
Connection ~ 4150 2500
$Comp
L Layer1-rescue:RAC05-05SK-RAC05-05SK PS1
U 1 1 5C93E1F0
P 1150 8300
F 0 "PS1" H 1900 8565 50  0000 C CNN
F 1 "RAC05-05SK" H 1900 8474 50  0000 C CNN
F 2 "RAC05-05SK:RAC05-12SK" H 2500 8400 50  0001 L CNN
F 3 "http://www.mouser.com/datasheet/2/468/RAC05-K-1140238.pdf" H 2500 8300 50  0001 L CNN
F 4 "Recom 5W Encapsulated Switch Mode Power Supply, 1A, 5V dc" H 2500 8200 50  0001 L CNN "Description"
F 5 "RECOM Power" H 2500 8000 50  0001 L CNN "Manufacturer_Name"
F 6 "RAC05-05SK" H 2500 7900 50  0001 L CNN "Manufacturer_Part_Number"
F 7 "1446298" H 2500 7800 50  0001 L CNN "RS Part Number"
F 8 "http://uk.rs-online.com/web/p/products/1446298" H 2500 7700 50  0001 L CNN "RS Price/Stock"
F 9 "919-RAC05-05SK" H 2500 7600 50  0001 L CNN "Mouser Part Number"
F 10 "https://www.mouser.com/Search/Refine.aspx?Keyword=919-RAC05-05SK" H 2500 7500 50  0001 L CNN "Mouser Price/Stock"
	1    1150 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3850 3250 3000
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5C99D16D
P 850 8300
F 0 "J3" V 816 8380 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 725 8380 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 850 8300 50  0001 C CNN
F 3 "~" H 850 8300 50  0001 C CNN
	1    850  8300
	-1   0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR015
U 1 1 5C9CB185
P 2800 8150
F 0 "#PWR015" H 2800 8000 50  0001 C CNN
F 1 "+5VD" H 2815 8323 50  0000 C CNN
F 2 "" H 2800 8150 50  0001 C CNN
F 3 "" H 2800 8150 50  0001 C CNN
	1    2800 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 8150 2800 8300
Wire Wire Line
	2800 8300 2650 8300
$Comp
L power:GNDD #PWR019
U 1 1 5C9D92A8
P 2800 8550
F 0 "#PWR019" H 2800 8300 50  0001 C CNN
F 1 "GNDD" H 2804 8395 50  0000 C CNN
F 2 "" H 2800 8550 50  0001 C CNN
F 3 "" H 2800 8550 50  0001 C CNN
	1    2800 8550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 8400 2800 8400
Wire Wire Line
	2800 8400 2800 8550
$Comp
L power:+5VD #PWR021
U 1 1 5C9E757C
P 5250 8800
F 0 "#PWR021" H 5250 8650 50  0001 C CNN
F 1 "+5VD" H 5265 8973 50  0000 C CNN
F 2 "" H 5250 8800 50  0001 C CNN
F 3 "" H 5250 8800 50  0001 C CNN
	1    5250 8800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR022
U 1 1 5C9E7685
P 5550 8800
F 0 "#PWR022" H 5550 8550 50  0001 C CNN
F 1 "GNDD" H 5554 8645 50  0000 C CNN
F 2 "" H 5550 8800 50  0001 C CNN
F 3 "" H 5550 8800 50  0001 C CNN
	1    5550 8800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 9050 5550 8800
Wire Wire Line
	5100 9050 5550 9050
$Comp
L power:GNDD #PWR024
U 1 1 5C9F5FC8
P 800 10150
F 0 "#PWR024" H 800 9900 50  0001 C CNN
F 1 "GNDD" H 804 9995 50  0000 C CNN
F 2 "" H 800 10150 50  0001 C CNN
F 3 "" H 800 10150 50  0001 C CNN
	1    800  10150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR013
U 1 1 5C915387
P 3850 8950
F 0 "#PWR013" H 3850 8800 50  0001 C CNN
F 1 "+3V3" V 3865 9078 50  0000 L CNN
F 2 "" H 3850 8950 50  0001 C CNN
F 3 "" H 3850 8950 50  0001 C CNN
	1    3850 8950
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDD #PWR023
U 1 1 5C9F6D2A
P 6150 9350
F 0 "#PWR023" H 6150 9100 50  0001 C CNN
F 1 "GNDD" V 6154 9240 50  0000 R CNN
F 2 "" H 6150 9350 50  0001 C CNN
F 3 "" H 6150 9350 50  0001 C CNN
	1    6150 9350
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 8300 1150 8300
Wire Wire Line
	1050 8400 1150 8400
$Comp
L power:GNDD #PWR0102
U 1 1 5CA6FBEC
P 8600 9150
F 0 "#PWR0102" H 8600 8900 50  0001 C CNN
F 1 "GNDD" H 8604 8995 50  0000 C CNN
F 2 "" H 8600 9150 50  0001 C CNN
F 3 "" H 8600 9150 50  0001 C CNN
	1    8600 9150
	-1   0    0    1   
$EndComp
NoConn ~ 8350 2150
NoConn ~ 8350 2250
$Comp
L Connector_Generic:Conn_01x06 J5
U 1 1 5CAAA5A0
P 13600 3350
F 0 "J5" H 13680 3342 50  0000 L CNN
F 1 "Conn_01x06" H 13680 3251 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 13600 3350 50  0001 C CNN
F 3 "~" H 13600 3350 50  0001 C CNN
	1    13600 3350
	1    0    0    -1  
$EndComp
Text GLabel 13400 3150 0    50   Input ~ 0
STPM10_SDA
Text GLabel 13400 3250 0    50   Input ~ 0
STPM10_SCL
Text GLabel 13400 3650 0    50   Input ~ 0
STPM10_SCS
Text GLabel 13400 3550 0    50   Input ~ 0
STPM10_SYN
$Comp
L power:GND #PWR0110
U 1 1 5CAAA5AB
P 12350 3350
F 0 "#PWR0110" H 12350 3100 50  0001 C CNN
F 1 "GND" V 12355 3222 50  0000 R CNN
F 2 "" H 12350 3350 50  0001 C CNN
F 3 "" H 12350 3350 50  0001 C CNN
	1    12350 3350
	0    1    1    0   
$EndComp
$Comp
L power:+5VD #PWR0113
U 1 1 5CACE509
P 8850 9150
F 0 "#PWR0113" H 8850 9000 50  0001 C CNN
F 1 "+5VD" H 8865 9323 50  0000 C CNN
F 2 "" H 8850 9150 50  0001 C CNN
F 3 "" H 8850 9150 50  0001 C CNN
	1    8850 9150
	1    0    0    -1  
$EndComp
NoConn ~ 8950 10350
$Comp
L Connector:TestPoint TP5
U 1 1 5CADC580
P 9100 1350
F 0 "TP5" H 9050 1600 50  0000 L CNN
F 1 "TestPoint" H 9158 1379 50  0001 L CNN
F 2 "TestPoint:TestPoint_THTPad_2.0x2.0mm_Drill1.0mm" H 9300 1350 50  0001 C CNN
F 3 "~" H 9300 1350 50  0001 C CNN
	1    9100 1350
	1    0    0    -1  
$EndComp
Connection ~ 9100 1350
Wire Wire Line
	9100 1350 9200 1350
Wire Wire Line
	3150 1850 3650 1850
Wire Wire Line
	3650 1850 4150 1850
Connection ~ 3650 1850
Connection ~ 4150 1850
$Comp
L power:GNDREF #PWR0107
U 1 1 5CB20B7E
P 4150 1950
F 0 "#PWR0107" H 4150 1700 50  0001 C CNN
F 1 "GNDREF" H 4155 1777 50  0000 C CNN
F 2 "" H 4150 1950 50  0001 C CNN
F 3 "" H 4150 1950 50  0001 C CNN
	1    4150 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5CB2E43D
P 5150 1950
F 0 "#PWR0112" H 5150 1700 50  0001 C CNN
F 1 "GND" H 5155 1777 50  0000 C CNN
F 2 "" H 5150 1950 50  0001 C CNN
F 3 "" H 5150 1950 50  0001 C CNN
	1    5150 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1850 5150 1950
Wire Wire Line
	9850 3000 10150 3000
$Comp
L power:GNDREF #PWR0103
U 1 1 5CB3DD28
P 2700 3650
F 0 "#PWR0103" H 2700 3400 50  0001 C CNN
F 1 "GNDREF" H 2705 3477 50  0000 C CNN
F 2 "" H 2700 3650 50  0001 C CNN
F 3 "" H 2700 3650 50  0001 C CNN
	1    2700 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0104
U 1 1 5CB3DF85
P 900 5650
F 0 "#PWR0104" H 900 5400 50  0001 C CNN
F 1 "GNDREF" H 905 5477 50  0000 C CNN
F 2 "" H 900 5650 50  0001 C CNN
F 3 "" H 900 5650 50  0001 C CNN
	1    900  5650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0105
U 1 1 5CB3EA22
P 10150 3000
F 0 "#PWR0105" H 10150 2750 50  0001 C CNN
F 1 "GNDREF" H 10155 2827 50  0000 C CNN
F 2 "" H 10150 3000 50  0001 C CNN
F 3 "" H 10150 3000 50  0001 C CNN
	1    10150 3000
	1    0    0    -1  
$EndComp
Connection ~ 10150 3000
Wire Wire Line
	10150 3000 10450 3000
$Comp
L power:GNDREF #PWR0114
U 1 1 5CB3EAB3
P 6650 2450
F 0 "#PWR0114" H 6650 2200 50  0001 C CNN
F 1 "GNDREF" H 6655 2277 50  0000 C CNN
F 2 "" H 6650 2450 50  0001 C CNN
F 3 "" H 6650 2450 50  0001 C CNN
	1    6650 2450
	1    0    0    -1  
$EndComp
Text GLabel 6300 9550 0    50   Input ~ 0
ESP32_SYN
Text GLabel 5100 9150 2    50   Input ~ 0
ESP32_SYN
Text GLabel 6300 9650 0    50   Input ~ 0
ESP32_SCS
Text GLabel 5100 9450 2    50   Input ~ 0
ESP32_SCS
Text GLabel 6300 9150 0    50   Input ~ 0
ESP32_SDA
Text GLabel 5100 9650 2    50   Input ~ 0
ESP32_SDA
Text GLabel 6300 9250 0    50   Input ~ 0
ESP32_SCL
Text GLabel 5100 9350 2    50   Input ~ 0
ESP32_SCL
$Comp
L Mechanical:MountingHole H5
U 1 1 5CB4DCE5
P 15350 850
F 0 "H5" H 15450 896 50  0000 L CNN
F 1 "MountingHole" H 15450 805 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965" H 15350 850 50  0001 C CNN
F 3 "~" H 15350 850 50  0001 C CNN
	1    15350 850 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 5CB4DD9F
P 15350 1050
F 0 "H6" H 15450 1096 50  0000 L CNN
F 1 "MountingHole" H 15450 1005 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965" H 15350 1050 50  0001 C CNN
F 3 "~" H 15350 1050 50  0001 C CNN
	1    15350 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0106
U 1 1 5CB57822
P 6200 1750
F 0 "#PWR0106" H 6200 1500 50  0001 C CNN
F 1 "GNDREF" H 6205 1577 50  0000 C CNN
F 2 "" H 6200 1750 50  0001 C CNN
F 3 "" H 6200 1750 50  0001 C CNN
	1    6200 1750
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J11
U 1 1 5C91326E
P 4700 2700
F 0 "J11" V 4619 2780 50  0000 L CNN
F 1 "Conn_01x02" V 4664 2780 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4700 2700 50  0001 C CNN
F 3 "~" H 4700 2700 50  0001 C CNN
	1    4700 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 2500 4700 2500
Wire Wire Line
	4400 2500 4600 2500
$Comp
L Connector_Generic:Conn_01x02 J13
U 1 1 5C92BC8B
P 4700 3700
F 0 "J13" V 4619 3780 50  0000 L CNN
F 1 "Conn_01x02" V 4664 3780 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4700 3700 50  0001 C CNN
F 3 "~" H 4700 3700 50  0001 C CNN
	1    4700 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 3500 4600 3500
Wire Wire Line
	4700 3500 4800 3500
$Comp
L Connector_Generic:Conn_01x02 J14
U 1 1 5C94465A
P 4700 4600
F 0 "J14" V 4619 4680 50  0000 L CNN
F 1 "Conn_01x02" V 4664 4680 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4700 4600 50  0001 C CNN
F 3 "~" H 4700 4600 50  0001 C CNN
	1    4700 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 4400 4800 4400
$Comp
L Connector_Generic:Conn_01x02 J15
U 1 1 5C951129
P 4700 5200
F 0 "J15" V 4619 5280 50  0000 L CNN
F 1 "Conn_01x02" V 4664 5280 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4700 5200 50  0001 C CNN
F 3 "~" H 4700 5200 50  0001 C CNN
	1    4700 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 5000 4800 5000
Wire Wire Line
	4050 4400 4600 4400
Connection ~ 4050 4400
Wire Wire Line
	4050 5000 4600 5000
Connection ~ 4050 5000
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5C9ADBA2
P 4400 1350
F 0 "J8" V 4320 1162 50  0000 R CNN
F 1 "Conn_01x02" V 4275 1162 50  0001 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4400 1350 50  0001 C CNN
F 3 "~" H 4400 1350 50  0001 C CNN
	1    4400 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 1550 4400 1550
Wire Wire Line
	4500 1550 5150 1550
$Comp
L Connector_Generic:Conn_01x02 J10
U 1 1 5C9E0CC4
P 4500 2100
F 0 "J10" V 4419 2180 50  0000 L CNN
F 1 "Conn_01x02" V 4464 2180 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4500 2100 50  0001 C CNN
F 3 "~" H 4500 2100 50  0001 C CNN
	1    4500 2100
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 5C9FDE1E
P 7300 1250
F 0 "J7" V 7220 1062 50  0000 R CNN
F 1 "Conn_01x02" V 7264 1330 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7300 1250 50  0001 C CNN
F 3 "~" H 7300 1250 50  0001 C CNN
	1    7300 1250
	0    1    -1   0   
$EndComp
Wire Wire Line
	7300 1450 7300 1550
Wire Wire Line
	7200 1450 7200 1550
Wire Wire Line
	7200 1550 7000 1550
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5CA188A8
P 10700 1200
F 0 "J6" V 10620 1012 50  0000 R CNN
F 1 "Conn_01x02" V 10664 1280 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10700 1200 50  0001 C CNN
F 3 "~" H 10700 1200 50  0001 C CNN
	1    10700 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10700 1450 10700 1400
Wire Wire Line
	8800 1450 10700 1450
Wire Wire Line
	10800 1400 10800 1450
Wire Wire Line
	10800 1450 10950 1450
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 5CA33A6D
P 10700 1800
F 0 "J9" V 10619 1880 50  0000 L CNN
F 1 "Conn_01x02" V 10664 1880 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10700 1800 50  0001 C CNN
F 3 "~" H 10700 1800 50  0001 C CNN
	1    10700 1800
	0    -1   1    0   
$EndComp
Wire Wire Line
	10700 1550 10700 1600
Wire Wire Line
	8750 1550 10700 1550
Wire Wire Line
	10800 1600 10800 1550
Wire Wire Line
	10800 1550 10950 1550
Wire Wire Line
	9600 1850 9600 3450
Wire Wire Line
	8700 1850 9600 1850
$Comp
L Connector_Generic:Conn_01x02 J12
U 1 1 5CA5D85C
P 10700 3650
F 0 "J12" V 10619 3730 50  0000 L CNN
F 1 "Conn_01x02" V 10664 3730 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10700 3650 50  0001 C CNN
F 3 "~" H 10700 3650 50  0001 C CNN
	1    10700 3650
	0    -1   1    0   
$EndComp
Wire Wire Line
	9850 1750 9850 2000
Wire Wire Line
	8350 1750 9850 1750
Wire Wire Line
	8350 1650 10450 1650
Wire Wire Line
	9600 3450 10700 3450
$Comp
L Connector_Generic:Conn_01x02 J16
U 1 1 5CAFE11A
P 12450 3150
F 0 "J16" V 12550 3150 50  0000 R CNN
F 1 "Conn_01x02" V 12414 3230 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 12450 3150 50  0001 C CNN
F 3 "~" H 12450 3150 50  0001 C CNN
	1    12450 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 1850 4400 1900
Wire Wire Line
	4150 1850 4400 1850
Wire Wire Line
	4500 1900 4500 1850
Wire Wire Line
	10800 3450 10950 3450
Wire Wire Line
	12350 3350 12450 3350
Wire Wire Line
	12550 3350 13400 3350
Text GLabel 12700 3350 1    50   Input ~ 0
GNDB
Text GLabel 7800 9250 1    50   Input ~ 0
GNDB
Wire Wire Line
	7800 9350 6950 9350
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5C9AD786
P 12550 3650
F 0 "J4" V 12650 3650 50  0000 R CNN
F 1 "Conn_01x02" V 12514 3730 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 12550 3650 50  0001 C CNN
F 3 "~" H 12550 3650 50  0001 C CNN
	1    12550 3650
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5C9AD8F4
P 12350 3450
F 0 "#PWR0108" H 12350 3300 50  0001 C CNN
F 1 "+5V" V 12350 3650 50  0000 C CNN
F 2 "" H 12350 3450 50  0001 C CNN
F 3 "" H 12350 3450 50  0001 C CNN
	1    12350 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12350 3450 12450 3450
Wire Wire Line
	12550 3450 13400 3450
Text GLabel 12700 3450 3    50   Input ~ 0
5VB
Text GLabel 7800 9550 3    50   Input ~ 0
5VB
Wire Wire Line
	7800 9450 7800 9550
Wire Wire Line
	6950 9450 7800 9450
Wire Wire Line
	4500 1850 4550 1850
Wire Wire Line
	4850 1850 5150 1850
Wire Wire Line
	4150 1850 4150 1950
$EndSCHEMATC
