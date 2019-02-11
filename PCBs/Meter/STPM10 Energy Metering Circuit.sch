EESchema Schematic File Version 4
LIBS:Meter-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Device:R R?
U 1 1 5BF420D9
P 1650 4350
AR Path="/5BF420D9" Ref="R?"  Part="1" 
AR Path="/5BF40B58/5BF420D9" Ref="R?"  Part="1" 
F 0 "R?" H 1720 4396 50  0000 L CNN
F 1 "12" H 1720 4305 50  0000 L CNN
F 2 "" V 1580 4350 50  0001 C CNN
F 3 "~" H 1650 4350 50  0001 C CNN
	1    1650 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BF420E0
P 2050 4050
AR Path="/5BF420E0" Ref="R?"  Part="1" 
AR Path="/5BF40B58/5BF420E0" Ref="R?"  Part="1" 
F 0 "R?" V 1843 4050 50  0000 C CNN
F 1 "2k" V 1934 4050 50  0000 C CNN
F 2 "" V 1980 4050 50  0001 C CNN
F 3 "~" H 2050 4050 50  0001 C CNN
	1    2050 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5BF420E7
P 2050 4650
AR Path="/5BF420E7" Ref="R?"  Part="1" 
AR Path="/5BF40B58/5BF420E7" Ref="R?"  Part="1" 
F 0 "R?" V 1843 4650 50  0000 C CNN
F 1 "2k" V 1934 4650 50  0000 C CNN
F 2 "" V 1980 4650 50  0001 C CNN
F 3 "~" H 2050 4650 50  0001 C CNN
	1    2050 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 4200 1650 4050
Wire Wire Line
	1650 4500 1650 4650
$Comp
L Device:C C?
U 1 1 5BF420F0
P 2500 4350
AR Path="/5BF420F0" Ref="C?"  Part="1" 
AR Path="/5BF40B58/5BF420F0" Ref="C?"  Part="1" 
F 0 "C?" H 2615 4396 50  0000 L CNN
F 1 "0.01uF" H 2615 4305 50  0000 L CNN
F 2 "" H 2538 4200 50  0001 C CNN
F 3 "~" H 2500 4350 50  0001 C CNN
	1    2500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4050 1900 4050
Wire Wire Line
	1650 4650 1900 4650
$Comp
L Connector:TestPoint TP?
U 1 1 5BF420F9
P 2750 4050
AR Path="/5BF420F9" Ref="TP?"  Part="1" 
AR Path="/5BF40B58/5BF420F9" Ref="TP?"  Part="1" 
F 0 "TP?" H 2800 4200 50  0000 L CNN
F 1 "TestPoint" H 2850 4150 50  0001 L CNN
F 2 "" H 2950 4050 50  0001 C CNN
F 3 "~" H 2950 4050 50  0001 C CNN
	1    2750 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5BF42100
P 2750 4650
AR Path="/5BF42100" Ref="TP?"  Part="1" 
AR Path="/5BF40B58/5BF42100" Ref="TP?"  Part="1" 
F 0 "TP?" H 2800 4800 50  0000 L CNN
F 1 "TestPoint" H 2850 4750 50  0001 L CNN
F 2 "" H 2950 4650 50  0001 C CNN
F 3 "~" H 2950 4650 50  0001 C CNN
	1    2750 4650
	1    0    0    -1  
$EndComp
Text GLabel 3300 4050 2    50   Input ~ 0
I_IP1
Text GLabel 3300 4650 2    50   Input ~ 0
I_IN1
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5BF42109
P 950 950
AR Path="/5BF42109" Ref="J?"  Part="1" 
AR Path="/5BF40B58/5BF42109" Ref="J?"  Part="1" 
F 0 "J?" V 916 762 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 825 762 50  0000 R CNN
F 2 "" H 950 950 50  0001 C CNN
F 3 "~" H 950 950 50  0001 C CNN
	1    950  950 
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5BF42110
P 1450 2550
AR Path="/5BF42110" Ref="R?"  Part="1" 
AR Path="/5BF40B58/5BF42110" Ref="R?"  Part="1" 
F 0 "R?" V 1243 2550 50  0000 C CNN
F 1 "261k" V 1334 2550 50  0000 C CNN
F 2 "" V 1380 2550 50  0001 C CNN
F 3 "~" H 1450 2550 50  0001 C CNN
	1    1450 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5BF42117
P 1850 2550
AR Path="/5BF42117" Ref="R?"  Part="1" 
AR Path="/5BF40B58/5BF42117" Ref="R?"  Part="1" 
F 0 "R?" V 1643 2550 50  0000 C CNN
F 1 "261k" V 1734 2550 50  0000 C CNN
F 2 "" V 1780 2550 50  0001 C CNN
F 3 "~" H 1850 2550 50  0001 C CNN
	1    1850 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5BF4211E
P 2250 2550
AR Path="/5BF4211E" Ref="R?"  Part="1" 
AR Path="/5BF40B58/5BF4211E" Ref="R?"  Part="1" 
F 0 "R?" V 2043 2550 50  0000 C CNN
F 1 "261k" V 2134 2550 50  0000 C CNN
F 2 "" V 2180 2550 50  0001 C CNN
F 3 "~" H 2250 2550 50  0001 C CNN
	1    2250 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5BF42125
P 2500 2800
AR Path="/5BF42125" Ref="R?"  Part="1" 
AR Path="/5BF40B58/5BF42125" Ref="R?"  Part="1" 
F 0 "R?" H 2570 2846 50  0000 L CNN
F 1 "475" H 2570 2755 50  0000 L CNN
F 2 "" V 2430 2800 50  0001 C CNN
F 3 "~" H 2500 2800 50  0001 C CNN
	1    2500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2550 1300 2550
Wire Wire Line
	1600 2550 1700 2550
Wire Wire Line
	2000 2550 2100 2550
Wire Wire Line
	2400 2550 2500 2550
Wire Wire Line
	2500 2550 2500 2650
Wire Wire Line
	2500 2950 2500 3050
Wire Wire Line
	2500 3050 1050 3050
$Comp
L Connector:TestPoint TP?
U 1 1 5BF42133
P 2750 2550
AR Path="/5BF42133" Ref="TP?"  Part="1" 
AR Path="/5BF40B58/5BF42133" Ref="TP?"  Part="1" 
F 0 "TP?" H 2800 2700 50  0000 L CNN
F 1 "TestPoint" H 2850 2650 50  0001 L CNN
F 2 "" H 2950 2550 50  0001 C CNN
F 3 "~" H 2950 2550 50  0001 C CNN
	1    2750 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5BF4213A
P 2750 3050
AR Path="/5BF4213A" Ref="TP?"  Part="1" 
AR Path="/5BF40B58/5BF4213A" Ref="TP?"  Part="1" 
F 0 "TP?" H 2800 3200 50  0000 L CNN
F 1 "TestPoint" H 2850 3150 50  0001 L CNN
F 2 "" H 2950 3050 50  0001 C CNN
F 3 "~" H 2950 3050 50  0001 C CNN
	1    2750 3050
	1    0    0    -1  
$EndComp
Text GLabel 3300 2550 2    50   Input ~ 0
V_IP
Wire Wire Line
	2500 2550 2750 2550
Connection ~ 2500 2550
Connection ~ 2750 2550
Wire Wire Line
	2750 2550 3300 2550
Text GLabel 3300 3050 2    50   Input ~ 0
V_IN
Wire Wire Line
	3300 3050 2750 3050
Connection ~ 2500 3050
Connection ~ 2750 3050
Wire Wire Line
	2750 3050 2500 3050
Connection ~ 2750 4050
Connection ~ 2750 4650
Wire Wire Line
	2200 4050 2500 4050
Wire Wire Line
	2200 4650 2500 4650
Wire Wire Line
	2500 4050 2500 4200
Connection ~ 2500 4050
Wire Wire Line
	2500 4050 2750 4050
Wire Wire Line
	2500 4500 2500 4650
Connection ~ 2500 4650
Wire Wire Line
	2500 4650 2750 4650
Wire Wire Line
	2750 4050 3300 4050
Wire Wire Line
	2750 4650 3300 4650
Wire Wire Line
	950  1150 950  1550
Connection ~ 1650 4050
Connection ~ 1650 4650
$Comp
L Device:C C?
U 1 1 5BF4215A
P 3400 1750
AR Path="/5BF4215A" Ref="C?"  Part="1" 
AR Path="/5BF40B58/5BF4215A" Ref="C?"  Part="1" 
F 0 "C?" H 3515 1796 50  0000 L CNN
F 1 "1uF" H 3515 1705 50  0000 L CNN
F 2 "" H 3438 1600 50  0001 C CNN
F 3 "~" H 3400 1750 50  0001 C CNN
	1    3400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  1550 950  2550
Connection ~ 950  1550
$Comp
L Converter_ACDC:RAC01-05SGB PS?
U 1 1 5BF42163
P 2350 1750
AR Path="/5BF42163" Ref="PS?"  Part="1" 
AR Path="/5BF40B58/5BF42163" Ref="PS?"  Part="1" 
F 0 "PS?" H 2350 2117 50  0000 C CNN
F 1 "RAC01-05SGB" H 2350 2026 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_RECOM_RAC01-xxSGB_THT" H 2350 1500 50  0001 C CNN
F 3 "https://www.recom-power.com/pdf/Powerline-AC-DC/RAC01-GB.pdf" H 2200 1750 50  0001 C CNN
	1    2350 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5BF4216A
P 1300 1550
AR Path="/5BF4216A" Ref="F?"  Part="1" 
AR Path="/5BF40B58/5BF4216A" Ref="F?"  Part="1" 
F 0 "F?" V 1103 1550 50  0000 C CNN
F 1 "Fuse" V 1194 1550 50  0000 C CNN
F 2 "" V 1230 1550 50  0001 C CNN
F 3 "~" H 1300 1550 50  0001 C CNN
	1    1300 1550
	0    1    1    0   
$EndComp
$Comp
L Device:Varistor RV?
U 1 1 5BF42171
P 1550 1750
AR Path="/5BF42171" Ref="RV?"  Part="1" 
AR Path="/5BF40B58/5BF42171" Ref="RV?"  Part="1" 
F 0 "RV?" H 1653 1796 50  0000 L CNN
F 1 "Varistor" H 1653 1705 50  0000 L CNN
F 2 "" V 1480 1750 50  0001 C CNN
F 3 "~" H 1550 1750 50  0001 C CNN
	1    1550 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1550 1950 1650
Wire Wire Line
	1950 1850 1950 1950
Wire Wire Line
	2750 1650 2750 1550
Wire Wire Line
	2750 1950 2750 1850
Wire Wire Line
	3400 1900 3400 1950
Wire Wire Line
	3400 1950 2750 1950
Wire Wire Line
	3400 1600 3400 1550
Wire Wire Line
	3400 1550 2750 1550
$Comp
L power:+5V #PWR?
U 1 1 5BF42180
P 3400 1550
AR Path="/5BF42180" Ref="#PWR?"  Part="1" 
AR Path="/5BF40B58/5BF42180" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3400 1400 50  0001 C CNN
F 1 "+5V" H 3415 1723 50  0000 C CNN
F 2 "" H 3400 1550 50  0001 C CNN
F 3 "" H 3400 1550 50  0001 C CNN
	1    3400 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BF42186
P 3400 1950
AR Path="/5BF42186" Ref="#PWR?"  Part="1" 
AR Path="/5BF40B58/5BF42186" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3400 1700 50  0001 C CNN
F 1 "GND" H 3405 1777 50  0000 C CNN
F 2 "" H 3400 1950 50  0001 C CNN
F 3 "" H 3400 1950 50  0001 C CNN
	1    3400 1950
	1    0    0    -1  
$EndComp
Connection ~ 3400 1950
Connection ~ 3400 1550
Text Label 950  1250 1    50   ~ 0
L
Text Label 1050 1250 1    50   ~ 0
N
Wire Wire Line
	1550 1600 1550 1550
Connection ~ 1550 1550
Wire Wire Line
	1550 1550 1950 1550
Wire Wire Line
	1550 1900 1550 1950
Connection ~ 1550 1950
Wire Wire Line
	1550 1950 1950 1950
Wire Wire Line
	1050 1150 1050 1950
Wire Wire Line
	950  1550 1150 1550
Wire Wire Line
	1450 1550 1550 1550
Wire Wire Line
	1050 1950 1550 1950
Connection ~ 1050 1950
Wire Wire Line
	1050 1950 1050 3050
$Comp
L Transformer:CST1_Split T?
U 2 1 5BF4219C
P 1050 4350
AR Path="/5BF4219C" Ref="T?"  Part="2" 
AR Path="/5BF40B58/5BF4219C" Ref="T?"  Part="2" 
F 0 "T?" V 1004 4309 50  0000 R CNN
F 1 "CST1_Split" V 1095 4309 50  0000 R CNN
F 2 "Transformer_SMD:Transformer_Coilcraft_CST1" H 1050 4350 50  0001 C CNN
F 3 "https://www.coilcraft.com/pdfs/cst.pdf" H 1050 4350 50  0001 C CNN
	2    1050 4350
	0    -1   1    0   
$EndComp
Wire Wire Line
	1050 4050 1650 4050
Wire Wire Line
	1050 4650 1650 4650
$Comp
L STPM:STPM10BTR U?
U 1 1 5BF42CA3
P 6500 1500
F 0 "U?" H 6500 2215 50  0000 C CNN
F 1 "STPM10BTR" H 6500 2124 50  0000 C CNN
F 2 "" H 6450 1450 50  0001 C CNN
F 3 "" H 6450 1450 50  0001 C CNN
	1    6500 1500
	1    0    0    -1  
$EndComp
Text GLabel 5950 1850 0    50   Input ~ 0
I_IP1
Text GLabel 5950 1950 0    50   Input ~ 0
I_IN1
$Comp
L Device:C C?
U 1 1 5BF42CAC
P 5300 1900
F 0 "C?" H 5415 1946 50  0000 L CNN
F 1 "C" H 5415 1855 50  0000 L CNN
F 2 "" H 5338 1750 50  0001 C CNN
F 3 "~" H 5300 1900 50  0001 C CNN
	1    5300 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5BF42CB3
P 4950 1900
F 0 "C?" H 5065 1946 50  0000 L CNN
F 1 "C" H 5065 1855 50  0000 L CNN
F 2 "" H 4988 1750 50  0001 C CNN
F 3 "~" H 4950 1900 50  0001 C CNN
	1    4950 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5BF42CBA
P 4600 1900
F 0 "C?" H 4715 1946 50  0000 L CNN
F 1 "C" H 4715 1855 50  0000 L CNN
F 2 "" H 4638 1750 50  0001 C CNN
F 3 "~" H 4600 1900 50  0001 C CNN
	1    4600 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1750 5300 1750
Wire Wire Line
	6050 1650 4950 1650
Wire Wire Line
	4950 1650 4950 1750
Wire Wire Line
	6050 1350 4600 1350
Wire Wire Line
	4600 1350 4600 1750
Wire Wire Line
	4600 2050 4950 2050
Connection ~ 4950 2050
Wire Wire Line
	4950 2050 5300 2050
$Comp
L power:GND #PWR?
U 1 1 5BF42CC9
P 4950 2050
F 0 "#PWR?" H 4950 1800 50  0001 C CNN
F 1 "GND" H 4955 1877 50  0000 C CNN
F 2 "" H 4950 2050 50  0001 C CNN
F 3 "" H 4950 2050 50  0001 C CNN
	1    4950 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BF42CCF
P 5950 1550
F 0 "#PWR?" H 5950 1300 50  0001 C CNN
F 1 "GND" V 5955 1422 50  0000 R CNN
F 2 "" H 5950 1550 50  0001 C CNN
F 3 "" H 5950 1550 50  0001 C CNN
	1    5950 1550
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5BF42CD5
P 5950 1450
F 0 "#PWR?" H 5950 1300 50  0001 C CNN
F 1 "+5V" V 5965 1578 50  0000 L CNN
F 2 "" H 5950 1450 50  0001 C CNN
F 3 "" H 5950 1450 50  0001 C CNN
	1    5950 1450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BF42CDB
P 7050 1950
F 0 "#PWR?" H 7050 1700 50  0001 C CNN
F 1 "GND" V 7055 1822 50  0000 R CNN
F 2 "" H 7050 1950 50  0001 C CNN
F 3 "" H 7050 1950 50  0001 C CNN
	1    7050 1950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BF42CE1
P 7050 1850
F 0 "#PWR?" H 7050 1600 50  0001 C CNN
F 1 "GND" V 7055 1722 50  0000 R CNN
F 2 "" H 7050 1850 50  0001 C CNN
F 3 "" H 7050 1850 50  0001 C CNN
	1    7050 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6950 1850 7050 1850
Wire Wire Line
	6950 1950 7050 1950
Wire Wire Line
	5950 1850 6050 1850
Wire Wire Line
	5950 1950 6050 1950
Text GLabel 7050 1750 2    50   Input ~ 0
V_IP
Text GLabel 7050 1650 2    50   Input ~ 0
V_IN
Wire Wire Line
	6050 1450 5950 1450
Wire Wire Line
	6050 1550 5950 1550
Wire Wire Line
	6950 1750 7050 1750
Wire Wire Line
	6950 1650 7050 1650
$Comp
L Device:R R?
U 1 1 5BF42CF1
P 7900 1600
F 0 "R?" V 7693 1600 50  0000 C CNN
F 1 "1M" V 7784 1600 50  0000 C CNN
F 2 "" V 7830 1600 50  0001 C CNN
F 3 "~" H 7900 1600 50  0001 C CNN
	1    7900 1600
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 5BF42CF8
P 7900 2000
F 0 "Y?" H 7900 2268 50  0000 C CNN
F 1 "Crystal 4MHz" H 7900 2177 50  0000 C CNN
F 2 "" H 7900 2000 50  0001 C CNN
F 3 "~" H 7900 2000 50  0001 C CNN
	1    7900 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5BF42CFF
P 7650 2300
F 0 "C?" H 7765 2346 50  0000 L CNN
F 1 "15pF" H 7765 2255 50  0000 L CNN
F 2 "" H 7688 2150 50  0001 C CNN
F 3 "~" H 7650 2300 50  0001 C CNN
	1    7650 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5BF42D06
P 8150 2300
F 0 "C?" H 8265 2346 50  0000 L CNN
F 1 "15pF" H 8265 2255 50  0000 L CNN
F 2 "" H 8188 2150 50  0001 C CNN
F 3 "~" H 8150 2300 50  0001 C CNN
	1    8150 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1600 7650 1600
Wire Wire Line
	7650 1600 7650 2000
Wire Wire Line
	7750 2000 7650 2000
Connection ~ 7650 2000
Wire Wire Line
	7650 2000 7650 2150
Wire Wire Line
	8050 1600 8150 1600
Wire Wire Line
	8150 1600 8150 2000
Wire Wire Line
	8050 2000 8150 2000
Connection ~ 8150 2000
Wire Wire Line
	8150 2000 8150 2150
$Comp
L power:GND #PWR?
U 1 1 5BF42D17
P 7650 2450
F 0 "#PWR?" H 7650 2200 50  0001 C CNN
F 1 "GND" H 7655 2277 50  0000 C CNN
F 2 "" H 7650 2450 50  0001 C CNN
F 3 "" H 7650 2450 50  0001 C CNN
	1    7650 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BF42D1D
P 8150 2450
F 0 "#PWR?" H 8150 2200 50  0001 C CNN
F 1 "GND" H 8155 2277 50  0000 C CNN
F 2 "" H 8150 2450 50  0001 C CNN
F 3 "" H 8150 2450 50  0001 C CNN
	1    8150 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1600 7650 1450
Wire Wire Line
	7650 1450 6950 1450
Connection ~ 7650 1600
Wire Wire Line
	8150 1600 8150 1350
Wire Wire Line
	8150 1350 6950 1350
Connection ~ 8150 1600
Text GLabel 7050 1550 2    50   Input ~ 0
SYN
Wire Wire Line
	6950 1550 7050 1550
Text GLabel 7050 1250 2    50   Input ~ 0
SCL
Wire Wire Line
	6950 1250 7050 1250
Text GLabel 7050 1150 2    50   Input ~ 0
SDA
Wire Wire Line
	7050 1150 6950 1150
NoConn ~ 6950 1050
NoConn ~ 6050 1050
NoConn ~ 6050 1150
Text GLabel 5950 1250 0    50   Input ~ 0
SCS
Wire Wire Line
	5950 1250 6050 1250
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 5BF42D34
P 9450 1350
F 0 "J?" H 9530 1342 50  0000 L CNN
F 1 "Conn_01x06" H 9530 1251 50  0000 L CNN
F 2 "" H 9450 1350 50  0001 C CNN
F 3 "~" H 9450 1350 50  0001 C CNN
	1    9450 1350
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5BF42D3B
P 9750 1150
F 0 "#PWR?" H 9750 1000 50  0001 C CNN
F 1 "+5V" V 9765 1278 50  0000 L CNN
F 2 "" H 9750 1150 50  0001 C CNN
F 3 "" H 9750 1150 50  0001 C CNN
	1    9750 1150
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BF42D41
P 9750 1250
F 0 "#PWR?" H 9750 1000 50  0001 C CNN
F 1 "GND" V 9755 1122 50  0000 R CNN
F 2 "" H 9750 1250 50  0001 C CNN
F 3 "" H 9750 1250 50  0001 C CNN
	1    9750 1250
	0    -1   1    0   
$EndComp
Text GLabel 9750 1350 2    50   Input ~ 0
SCS
Text GLabel 9750 1450 2    50   Input ~ 0
SYN
Text GLabel 9750 1550 2    50   Input ~ 0
SDA
Text GLabel 9750 1650 2    50   Input ~ 0
SCL
Wire Wire Line
	9650 1650 9750 1650
Wire Wire Line
	9750 1150 9650 1150
Wire Wire Line
	9650 1550 9750 1550
Wire Wire Line
	9750 1450 9650 1450
Wire Wire Line
	9750 1350 9650 1350
Wire Wire Line
	9750 1250 9650 1250
$EndSCHEMATC
