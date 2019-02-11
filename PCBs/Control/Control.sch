EESchema Schematic File Version 4
LIBS:Control-cache
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
L Connector_Generic:Conn_01x06 J1
U 1 1 5BF7B846
P 1000 1400
F 0 "J1" H 920 1817 50  0000 C CNN
F 1 "Conn_01x06" H 920 1726 50  0000 C CNN
F 2 "" H 1000 1400 50  0001 C CNN
F 3 "~" H 1000 1400 50  0001 C CNN
	1    1000 1400
	-1   0    0    -1  
$EndComp
Text GLabel 1300 1500 2    50   Input ~ 0
SYN
Text GLabel 1300 1700 2    50   Input ~ 0
SCL
Text GLabel 1300 1600 2    50   Input ~ 0
SDA
Text GLabel 1300 1400 2    50   Input ~ 0
SCS
Wire Wire Line
	1200 1400 1300 1400
Wire Wire Line
	1200 1500 1300 1500
Wire Wire Line
	1300 1600 1200 1600
Wire Wire Line
	1300 1700 1200 1700
$Comp
L MCU_Module_Custom:DOIT_ESP32_Devkit_v1 B2
U 1 1 5BF7BA5F
P 4950 1300
F 0 "B2" H 5250 1765 50  0000 C CNN
F 1 "DOIT_ESP32_Devkit_v1" H 5250 1674 50  0000 C CNN
F 2 "" H 4950 1300 50  0001 C CNN
F 3 "" H 4950 1300 50  0001 C CNN
F 4 "https://raw.githubusercontent.com/playelek/pinout-doit-32devkitv1/master/pinoutDOIT32devkitv1.png" H 4950 1300 50  0001 C CNN "Pinout"
	1    4950 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2200 4550 2200
Text GLabel 4550 2200 0    50   Input ~ 0
HSPI_MISO
Text GLabel 4550 2100 0    50   Input ~ 0
HSPI_CLK
Wire Wire Line
	4700 2100 4550 2100
Text GLabel 5950 2300 2    50   Input ~ 0
HSPI_CS0
Wire Wire Line
	5800 2300 5950 2300
$Comp
L power:+5V #PWR014
U 1 1 5BF7BE65
P 4550 2500
F 0 "#PWR014" H 4550 2350 50  0001 C CNN
F 1 "+5V" V 4565 2628 50  0000 L CNN
F 2 "" H 4550 2500 50  0001 C CNN
F 3 "" H 4550 2500 50  0001 C CNN
	1    4550 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5BF7BEA6
P 4550 2400
F 0 "#PWR013" H 4550 2150 50  0001 C CNN
F 1 "GND" V 4555 2272 50  0000 R CNN
F 2 "" H 4550 2400 50  0001 C CNN
F 3 "" H 4550 2400 50  0001 C CNN
	1    4550 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 2400 4700 2400
Wire Wire Line
	4550 2500 4700 2500
Text GLabel 4550 2300 0    50   Input ~ 0
GPIO_13
Wire Wire Line
	4700 2300 4550 2300
$Comp
L Isolator:ISO7341C U1
U 1 1 5BF98638
P 2100 3250
F 0 "U1" H 2100 3917 50  0000 C CNN
F 1 "ISO7341C" H 2100 3826 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 2100 2700 50  0001 C CIN
F 3 "http://www.ti.com/general/docs/lit/getliterature.tsp?genericPartNumber=iso7341c&fileType=pdf" H 2100 3650 50  0001 C CNN
	1    2100 3250
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR09
U 1 1 5BF99751
P 3050 2800
F 0 "#PWR09" H 3050 2650 50  0001 C CNN
F 1 "+3V3" H 3065 2973 50  0000 C CNN
F 2 "" H 3050 2800 50  0001 C CNN
F 3 "" H 3050 2800 50  0001 C CNN
	1    3050 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5BF9B66F
P 1650 2950
F 0 "#PWR03" H 1650 2700 50  0001 C CNN
F 1 "GND" V 1655 2822 50  0000 R CNN
F 2 "" H 1650 2950 50  0001 C CNN
F 3 "" H 1650 2950 50  0001 C CNN
	1    1650 2950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5BFAA750
P 2550 2950
F 0 "#PWR06" H 2550 2700 50  0001 C CNN
F 1 "GND" V 2555 2822 50  0000 R CNN
F 2 "" H 2550 2950 50  0001 C CNN
F 3 "" H 2550 2950 50  0001 C CNN
	1    2550 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 2950 2550 2950
Wire Wire Line
	3050 2850 3050 2800
Wire Wire Line
	2500 2850 2900 2850
$Comp
L Device:C_Small C2
U 1 1 5BFAD04B
P 3050 2950
F 0 "C2" H 3142 2996 50  0000 L CNN
F 1 "0.1uF" H 3142 2905 50  0000 L CNN
F 2 "" H 3050 2950 50  0001 C CNN
F 3 "~" H 3050 2950 50  0001 C CNN
	1    3050 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2850 2900 3150
Wire Wire Line
	2500 3150 2900 3150
$Comp
L power:GND #PWR010
U 1 1 5BFAE3AC
P 3050 3050
F 0 "#PWR010" H 3050 2800 50  0001 C CNN
F 1 "GND" H 3055 2877 50  0000 C CNN
F 2 "" H 3050 3050 50  0001 C CNN
F 3 "" H 3050 3050 50  0001 C CNN
	1    3050 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2950 1700 2950
$Comp
L Device:C_Small C1
U 1 1 5BFAFF47
P 1150 2950
F 0 "C1" H 800 3000 50  0000 L CNN
F 1 "0.1uF" H 800 2900 50  0000 L CNN
F 2 "" H 1150 2950 50  0001 C CNN
F 3 "~" H 1150 2950 50  0001 C CNN
	1    1150 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2850 1300 2850
Wire Wire Line
	1150 2850 1150 2800
Connection ~ 1150 2850
Wire Wire Line
	1300 2850 1300 3150
Wire Wire Line
	1300 3150 1700 3150
Connection ~ 1300 2850
Wire Wire Line
	1300 2850 1700 2850
Wire Wire Line
	2900 2850 3050 2850
Connection ~ 2900 2850
Connection ~ 3050 2850
Text GLabel 2650 3350 2    50   Input ~ 0
HSPI_CS0
Text GLabel 2650 3450 2    50   Input ~ 0
HSPI_CLK
Text GLabel 2650 3550 2    50   Input ~ 0
GPIO_13
Text GLabel 1550 3350 0    50   Input ~ 0
SCS
Text GLabel 1550 3450 0    50   Input ~ 0
SCL
Text GLabel 1550 3550 0    50   Input ~ 0
SYN
Text GLabel 2650 3650 2    50   Input ~ 0
HSPI_MISO
Text GLabel 1550 3650 0    50   Input ~ 0
SDA
Wire Wire Line
	2650 3350 2500 3350
Wire Wire Line
	1700 3350 1550 3350
Wire Wire Line
	2650 3450 2500 3450
Wire Wire Line
	1700 3450 1550 3450
Wire Wire Line
	2650 3550 2500 3550
Wire Wire Line
	1700 3550 1550 3550
Wire Wire Line
	2650 3650 2500 3650
Wire Wire Line
	1700 3650 1550 3650
$Comp
L RFM-0505S:RFM-0505S PS1
U 1 1 5BF39FF2
P 1900 1300
F 0 "PS1" H 2500 935 50  0000 C CNN
F 1 "RFM-0505S" H 2500 1026 50  0000 C CNN
F 2 "RFM0505S" H 2950 1400 50  0001 L CNN
F 3 "https://www.recom-power.com/pdf/Econoline/RFM.pdf" H 2950 1300 50  0001 L CNN
F 4 "RECOM POWER - RFM-0505S - DC-DC CONVERTER, 5V, 0.2A" H 2950 1200 50  0001 L CNN "Description"
F 5 "10" H 2950 1100 50  0001 L CNN "Height"
F 6 "RECOM Power" H 2950 1000 50  0001 L CNN "Manufacturer_Name"
F 7 "RFM-0505S" H 2950 900 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 2950 800 50  0001 L CNN "RS Part Number"
F 9 "" H 2950 700 50  0001 L CNN "RS Price/Stock"
F 10 "RFM-0505S" H 2950 600 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/rfm-0505s/recom-power" H 2950 500 50  0001 L CNN "Arrow Price/Stock"
	1    1900 1300
	1    0    0    1   
$EndComp
$Comp
L power:GNDA #PWR05
U 1 1 5BF3AD18
P 1850 1350
F 0 "#PWR05" H 1850 1100 50  0001 C CNN
F 1 "GNDA" H 1855 1177 50  0000 C CNN
F 2 "" H 1850 1350 50  0001 C CNN
F 3 "" H 1850 1350 50  0001 C CNN
	1    1850 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1150 1850 1200
Wire Wire Line
	1850 1200 1900 1200
Wire Wire Line
	1850 1350 1850 1300
Wire Wire Line
	1850 1300 1900 1300
Wire Wire Line
	1200 1200 1850 1200
Connection ~ 1850 1200
Wire Wire Line
	1200 1300 1850 1300
Connection ~ 1850 1300
$Comp
L power:+5VA #PWR04
U 1 1 5BF3E809
P 1850 1150
F 0 "#PWR04" H 1850 1000 50  0001 C CNN
F 1 "+5VA" H 1865 1323 50  0000 C CNN
F 2 "" H 1850 1150 50  0001 C CNN
F 3 "" H 1850 1150 50  0001 C CNN
	1    1850 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR01
U 1 1 5BF3E8D0
P 1150 2800
F 0 "#PWR01" H 1150 2650 50  0001 C CNN
F 1 "+5VA" H 1165 2973 50  0000 C CNN
F 2 "" H 1150 2800 50  0001 C CNN
F 3 "" H 1150 2800 50  0001 C CNN
	1    1150 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 5BF3EA50
P 3150 1150
F 0 "#PWR011" H 3150 1000 50  0001 C CNN
F 1 "+5V" H 3165 1323 50  0000 C CNN
F 2 "" H 3150 1150 50  0001 C CNN
F 3 "" H 3150 1150 50  0001 C CNN
	1    3150 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5BF3EA93
P 3150 1350
F 0 "#PWR012" H 3150 1100 50  0001 C CNN
F 1 "GND" H 3155 1177 50  0000 C CNN
F 2 "" H 3150 1350 50  0001 C CNN
F 3 "" H 3150 1350 50  0001 C CNN
	1    3150 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1300 3150 1300
Wire Wire Line
	3150 1300 3150 1350
Wire Wire Line
	3100 1200 3150 1200
Wire Wire Line
	3150 1200 3150 1150
$Comp
L power:GNDA #PWR02
U 1 1 5BF40362
P 1150 3050
F 0 "#PWR02" H 1150 2800 50  0001 C CNN
F 1 "GNDA" H 1155 2877 50  0000 C CNN
F 2 "" H 1150 3050 50  0001 C CNN
F 3 "" H 1150 3050 50  0001 C CNN
	1    1150 3050
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Module_Custom:128x64_OLED_Display DS1
U 1 1 5BF42832
P 10000 1400
F 0 "DS1" H 9450 1800 50  0000 L CNN
F 1 "128x64_OLED_Display" H 9600 1600 50  0000 L CNN
F 2 "" H 10600 2000 50  0001 C CNN
F 3 "https://thaieasyelec.com/products/display/lcd-oled/128x64-oled-display-white-detail.html" H 10600 2000 50  0001 C CNN
F 4 "https://thaieasyelec.com/products/display/lcd-oled/128x64-oled-display-white-detail.html" H 10000 1400 50  0001 C CNN "Thaieasyelec page"
F 5 "EDPM046" H 10000 1400 50  0001 C CNN "Thaieasyelec PN"
	1    10000 1400
	1    0    0    -1  
$EndComp
Text GLabel 5950 2000 2    50   Input ~ 0
ESP32_RX
Text GLabel 5950 1900 2    50   Input ~ 0
ESP32_TX
Wire Wire Line
	5800 1900 5950 1900
Wire Wire Line
	5800 2000 5950 2000
$Comp
L power:+3V3 #PWR019
U 1 1 5BF52C67
P 5950 2500
F 0 "#PWR019" H 5950 2350 50  0001 C CNN
F 1 "+3V3" V 5965 2628 50  0000 L CNN
F 2 "" H 5950 2500 50  0001 C CNN
F 3 "" H 5950 2500 50  0001 C CNN
	1    5950 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 2500 5950 2500
$Comp
L Arduino_Module_Custom:Micro_SD_Card_Module B1
U 1 1 5BF75232
P 1850 5000
F 0 "B1" H 1820 5717 50  0000 C CNN
F 1 "Micro_SD_Card_Module" H 1820 5626 50  0000 C CNN
F 2 "" H 2250 5700 50  0001 C CNN
F 3 "" H 2250 5700 50  0001 C CNN
F 4 "https://www.arduinoall.com/product/557/%E0%B9%82%E0%B8%A1%E0%B8%94%E0%B8%B9%E0%B8%A5-micro-sd-card-micro-sd-card-module-microsd-card-adapter-catalex" H 1850 5000 50  0001 C CNN "Buy"
	1    1850 5000
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR07
U 1 1 5BF76B3D
P 2850 5200
F 0 "#PWR07" H 2850 5050 50  0001 C CNN
F 1 "+3V3" V 2865 5328 50  0000 L CNN
F 2 "" H 2850 5200 50  0001 C CNN
F 3 "" H 2850 5200 50  0001 C CNN
	1    2850 5200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5BF76B9B
P 2850 5300
F 0 "#PWR08" H 2850 5050 50  0001 C CNN
F 1 "GND" V 2855 5172 50  0000 R CNN
F 2 "" H 2850 5300 50  0001 C CNN
F 3 "" H 2850 5300 50  0001 C CNN
	1    2850 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2750 5300 2850 5300
Wire Wire Line
	2750 5200 2850 5200
Wire Wire Line
	2750 5100 2850 5100
Wire Wire Line
	2750 4900 2850 4900
Wire Wire Line
	5800 1800 5950 1800
Text GLabel 5950 1800 2    50   Input ~ 0
SPI_CS0
Text GLabel 5950 1700 2    50   Input ~ 0
SPI_CLK
Wire Wire Line
	5950 1700 5800 1700
Text GLabel 5950 1600 2    50   Input ~ 0
SPI_MISO
Wire Wire Line
	5950 1600 5800 1600
Text GLabel 5950 1100 2    50   Input ~ 0
SPI_MOSI
Wire Wire Line
	5950 1100 5800 1100
Text GLabel 2850 5100 2    50   Input ~ 0
SPI_MISO
Text GLabel 2850 5000 2    50   Input ~ 0
SPI_MOSI
Wire Wire Line
	2850 5000 2750 5000
Text GLabel 2850 4900 2    50   Input ~ 0
SPI_CLK
Text GLabel 2850 4800 2    50   Input ~ 0
SPI_CS0
Wire Wire Line
	2750 4800 2850 4800
$Comp
L Device:C C3
U 1 1 5BFA6138
P 5100 4600
F 0 "C3" H 5215 4646 50  0000 L CNN
F 1 "100nF" H 5215 4555 50  0000 L CNN
F 2 "" H 5138 4450 50  0001 C CNN
F 3 "~" H 5100 4600 50  0001 C CNN
	1    5100 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BFA61A0
P 5100 5000
F 0 "R2" H 5170 5046 50  0000 L CNN
F 1 "100" H 5170 4955 50  0000 L CNN
F 2 "" V 5030 5000 50  0001 C CNN
F 3 "~" H 5100 5000 50  0001 C CNN
	1    5100 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5BFA6215
P 5100 4100
F 0 "R1" H 5170 4146 50  0000 L CNN
F 1 "4.7k" H 5170 4055 50  0000 L CNN
F 2 "" V 5030 4100 50  0001 C CNN
F 3 "~" H 5100 4100 50  0001 C CNN
	1    5100 4100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5BFA633C
P 4850 4800
F 0 "SW1" V 4850 4752 50  0000 R CNN
F 1 "SW_Push" V 4805 4752 50  0001 R CNN
F 2 "" H 4850 5000 50  0001 C CNN
F 3 "" H 4850 5000 50  0001 C CNN
	1    4850 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 4350 5100 4450
Wire Wire Line
	5100 4350 5100 4250
Connection ~ 5100 4350
Wire Wire Line
	5100 4750 5100 4850
$Comp
L power:+3V3 #PWR015
U 1 1 5BFAED5E
P 5100 3850
F 0 "#PWR015" H 5100 3700 50  0001 C CNN
F 1 "+3V3" H 5115 4023 50  0000 C CNN
F 2 "" H 5100 3850 50  0001 C CNN
F 3 "" H 5100 3850 50  0001 C CNN
	1    5100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3850 5100 3950
$Comp
L power:GND #PWR016
U 1 1 5BFB111A
P 5100 5250
F 0 "#PWR016" H 5100 5000 50  0001 C CNN
F 1 "GND" H 5105 5077 50  0000 C CNN
F 2 "" H 5100 5250 50  0001 C CNN
F 3 "" H 5100 5250 50  0001 C CNN
	1    5100 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5150 5100 5200
Wire Wire Line
	5100 5200 4850 5200
Connection ~ 5100 5200
Wire Wire Line
	5100 5200 5100 5250
Wire Wire Line
	4850 4600 4850 4350
Wire Wire Line
	4850 4350 5100 4350
Wire Wire Line
	4850 5000 4850 5200
$Comp
L Device:C C4
U 1 1 5BFBCC44
P 5900 4600
F 0 "C4" H 6015 4646 50  0000 L CNN
F 1 "100nF" H 6015 4555 50  0000 L CNN
F 2 "" H 5938 4450 50  0001 C CNN
F 3 "~" H 5900 4600 50  0001 C CNN
	1    5900 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5BFBCC4B
P 5900 5000
F 0 "R4" H 5970 5046 50  0000 L CNN
F 1 "100" H 5970 4955 50  0000 L CNN
F 2 "" V 5830 5000 50  0001 C CNN
F 3 "~" H 5900 5000 50  0001 C CNN
	1    5900 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5BFBCC52
P 5900 4100
F 0 "R3" H 5970 4146 50  0000 L CNN
F 1 "4.7k" H 5970 4055 50  0000 L CNN
F 2 "" V 5830 4100 50  0001 C CNN
F 3 "~" H 5900 4100 50  0001 C CNN
	1    5900 4100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5BFBCC59
P 5650 4800
F 0 "SW2" V 5650 4752 50  0000 R CNN
F 1 "SW_Push" V 5605 4752 50  0001 R CNN
F 2 "" H 5650 5000 50  0001 C CNN
F 3 "" H 5650 5000 50  0001 C CNN
	1    5650 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 4350 5900 4450
Wire Wire Line
	5900 4350 5900 4250
Connection ~ 5900 4350
Wire Wire Line
	5900 4750 5900 4850
$Comp
L power:+3V3 #PWR017
U 1 1 5BFBCC64
P 5900 3850
F 0 "#PWR017" H 5900 3700 50  0001 C CNN
F 1 "+3V3" H 5915 4023 50  0000 C CNN
F 2 "" H 5900 3850 50  0001 C CNN
F 3 "" H 5900 3850 50  0001 C CNN
	1    5900 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3850 5900 3950
$Comp
L power:GND #PWR018
U 1 1 5BFBCC6B
P 5900 5250
F 0 "#PWR018" H 5900 5000 50  0001 C CNN
F 1 "GND" H 5905 5077 50  0000 C CNN
F 2 "" H 5900 5250 50  0001 C CNN
F 3 "" H 5900 5250 50  0001 C CNN
	1    5900 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5150 5900 5200
Wire Wire Line
	5900 5200 5650 5200
Connection ~ 5900 5200
Wire Wire Line
	5900 5200 5900 5250
Wire Wire Line
	5650 4600 5650 4350
Wire Wire Line
	5650 4350 5900 4350
Wire Wire Line
	5650 5000 5650 5200
Text GLabel 4850 4350 0    50   Input ~ 0
B1
Text GLabel 5650 4350 0    50   Input ~ 0
B2
$Comp
L Device:C C5
U 1 1 5BFCB428
P 6700 4600
F 0 "C5" H 6815 4646 50  0000 L CNN
F 1 "100nF" H 6815 4555 50  0000 L CNN
F 2 "" H 6738 4450 50  0001 C CNN
F 3 "~" H 6700 4600 50  0001 C CNN
	1    6700 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5BFCB42F
P 6700 5000
F 0 "R6" H 6770 5046 50  0000 L CNN
F 1 "100" H 6770 4955 50  0000 L CNN
F 2 "" V 6630 5000 50  0001 C CNN
F 3 "~" H 6700 5000 50  0001 C CNN
	1    6700 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5BFCB436
P 6700 4100
F 0 "R5" H 6770 4146 50  0000 L CNN
F 1 "4.7k" H 6770 4055 50  0000 L CNN
F 2 "" V 6630 4100 50  0001 C CNN
F 3 "~" H 6700 4100 50  0001 C CNN
	1    6700 4100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5BFCB43D
P 6450 4800
F 0 "SW3" V 6450 4752 50  0000 R CNN
F 1 "SW_Push" V 6405 4752 50  0001 R CNN
F 2 "" H 6450 5000 50  0001 C CNN
F 3 "" H 6450 5000 50  0001 C CNN
	1    6450 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6700 4350 6700 4450
Wire Wire Line
	6700 4350 6700 4250
Connection ~ 6700 4350
Wire Wire Line
	6700 4750 6700 4850
$Comp
L power:+3V3 #PWR020
U 1 1 5BFCB448
P 6700 3850
F 0 "#PWR020" H 6700 3700 50  0001 C CNN
F 1 "+3V3" H 6715 4023 50  0000 C CNN
F 2 "" H 6700 3850 50  0001 C CNN
F 3 "" H 6700 3850 50  0001 C CNN
	1    6700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3850 6700 3950
$Comp
L power:GND #PWR021
U 1 1 5BFCB44F
P 6700 5250
F 0 "#PWR021" H 6700 5000 50  0001 C CNN
F 1 "GND" H 6705 5077 50  0000 C CNN
F 2 "" H 6700 5250 50  0001 C CNN
F 3 "" H 6700 5250 50  0001 C CNN
	1    6700 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5150 6700 5200
Wire Wire Line
	6700 5200 6450 5200
Connection ~ 6700 5200
Wire Wire Line
	6700 5200 6700 5250
Wire Wire Line
	6450 4600 6450 4350
Wire Wire Line
	6450 4350 6700 4350
Wire Wire Line
	6450 5000 6450 5200
Text GLabel 6450 4350 0    50   Input ~ 0
B3
$Comp
L Device:C C6
U 1 1 5BFCFAE1
P 7500 4600
F 0 "C6" H 7615 4646 50  0000 L CNN
F 1 "100nF" H 7615 4555 50  0000 L CNN
F 2 "" H 7538 4450 50  0001 C CNN
F 3 "~" H 7500 4600 50  0001 C CNN
	1    7500 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5BFCFAE8
P 7500 5000
F 0 "R8" H 7570 5046 50  0000 L CNN
F 1 "100" H 7570 4955 50  0000 L CNN
F 2 "" V 7430 5000 50  0001 C CNN
F 3 "~" H 7500 5000 50  0001 C CNN
	1    7500 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5BFCFAEF
P 7500 4100
F 0 "R7" H 7570 4146 50  0000 L CNN
F 1 "4.7k" H 7570 4055 50  0000 L CNN
F 2 "" V 7430 4100 50  0001 C CNN
F 3 "~" H 7500 4100 50  0001 C CNN
	1    7500 4100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5BFCFAF6
P 7250 4800
F 0 "SW4" V 7250 4752 50  0000 R CNN
F 1 "SW_Push" V 7205 4752 50  0001 R CNN
F 2 "" H 7250 5000 50  0001 C CNN
F 3 "" H 7250 5000 50  0001 C CNN
	1    7250 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7500 4350 7500 4450
Wire Wire Line
	7500 4350 7500 4250
Connection ~ 7500 4350
Wire Wire Line
	7500 4750 7500 4850
$Comp
L power:+3V3 #PWR022
U 1 1 5BFCFB01
P 7500 3850
F 0 "#PWR022" H 7500 3700 50  0001 C CNN
F 1 "+3V3" H 7515 4023 50  0000 C CNN
F 2 "" H 7500 3850 50  0001 C CNN
F 3 "" H 7500 3850 50  0001 C CNN
	1    7500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3850 7500 3950
$Comp
L power:GND #PWR023
U 1 1 5BFCFB08
P 7500 5250
F 0 "#PWR023" H 7500 5000 50  0001 C CNN
F 1 "GND" H 7505 5077 50  0000 C CNN
F 2 "" H 7500 5250 50  0001 C CNN
F 3 "" H 7500 5250 50  0001 C CNN
	1    7500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5150 7500 5200
Wire Wire Line
	7500 5200 7250 5200
Connection ~ 7500 5200
Wire Wire Line
	7500 5200 7500 5250
Wire Wire Line
	7250 4600 7250 4350
Wire Wire Line
	7250 4350 7500 4350
Wire Wire Line
	7250 5000 7250 5200
Text GLabel 7250 4350 0    50   Input ~ 0
B4
$Comp
L Device:C C7
U 1 1 5BFD2437
P 8300 4600
F 0 "C7" H 8415 4646 50  0000 L CNN
F 1 "100nF" H 8415 4555 50  0000 L CNN
F 2 "" H 8338 4450 50  0001 C CNN
F 3 "~" H 8300 4600 50  0001 C CNN
	1    8300 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5BFD243E
P 8300 5000
F 0 "R10" H 8370 5046 50  0000 L CNN
F 1 "100" H 8370 4955 50  0000 L CNN
F 2 "" V 8230 5000 50  0001 C CNN
F 3 "~" H 8300 5000 50  0001 C CNN
	1    8300 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5BFD2445
P 8300 4100
F 0 "R9" H 8370 4146 50  0000 L CNN
F 1 "4.7k" H 8370 4055 50  0000 L CNN
F 2 "" V 8230 4100 50  0001 C CNN
F 3 "~" H 8300 4100 50  0001 C CNN
	1    8300 4100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5BFD244C
P 8050 4800
F 0 "SW5" V 8050 4752 50  0000 R CNN
F 1 "SW_Push" V 8005 4752 50  0001 R CNN
F 2 "" H 8050 5000 50  0001 C CNN
F 3 "" H 8050 5000 50  0001 C CNN
	1    8050 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8300 4350 8300 4450
Wire Wire Line
	8300 4350 8300 4250
Connection ~ 8300 4350
Wire Wire Line
	8300 4750 8300 4850
$Comp
L power:+3V3 #PWR024
U 1 1 5BFD2457
P 8300 3850
F 0 "#PWR024" H 8300 3700 50  0001 C CNN
F 1 "+3V3" H 8315 4023 50  0000 C CNN
F 2 "" H 8300 3850 50  0001 C CNN
F 3 "" H 8300 3850 50  0001 C CNN
	1    8300 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3850 8300 3950
$Comp
L power:GND #PWR025
U 1 1 5BFD245E
P 8300 5250
F 0 "#PWR025" H 8300 5000 50  0001 C CNN
F 1 "GND" H 8305 5077 50  0000 C CNN
F 2 "" H 8300 5250 50  0001 C CNN
F 3 "" H 8300 5250 50  0001 C CNN
	1    8300 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5150 8300 5200
Wire Wire Line
	8300 5200 8050 5200
Connection ~ 8300 5200
Wire Wire Line
	8300 5200 8300 5250
Wire Wire Line
	8050 4600 8050 4350
Wire Wire Line
	8050 4350 8300 4350
Wire Wire Line
	8050 5000 8050 5200
Text GLabel 8050 4350 0    50   Input ~ 0
B5
$Comp
L Device:C C8
U 1 1 5BFD5A08
P 9100 4600
F 0 "C8" H 9215 4646 50  0000 L CNN
F 1 "100nF" H 9215 4555 50  0000 L CNN
F 2 "" H 9138 4450 50  0001 C CNN
F 3 "~" H 9100 4600 50  0001 C CNN
	1    9100 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5BFD5A0F
P 9100 5000
F 0 "R12" H 9170 5046 50  0000 L CNN
F 1 "100" H 9170 4955 50  0000 L CNN
F 2 "" V 9030 5000 50  0001 C CNN
F 3 "~" H 9100 5000 50  0001 C CNN
	1    9100 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5BFD5A16
P 9100 4100
F 0 "R11" H 9170 4146 50  0000 L CNN
F 1 "4.7k" H 9170 4055 50  0000 L CNN
F 2 "" V 9030 4100 50  0001 C CNN
F 3 "~" H 9100 4100 50  0001 C CNN
	1    9100 4100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 5BFD5A1D
P 8850 4800
F 0 "SW6" V 8850 4752 50  0000 R CNN
F 1 "SW_Push" V 8805 4752 50  0001 R CNN
F 2 "" H 8850 5000 50  0001 C CNN
F 3 "" H 8850 5000 50  0001 C CNN
	1    8850 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9100 4350 9100 4450
Wire Wire Line
	9100 4350 9100 4250
Connection ~ 9100 4350
Wire Wire Line
	9100 4750 9100 4850
$Comp
L power:+3V3 #PWR026
U 1 1 5BFD5A28
P 9100 3850
F 0 "#PWR026" H 9100 3700 50  0001 C CNN
F 1 "+3V3" H 9115 4023 50  0000 C CNN
F 2 "" H 9100 3850 50  0001 C CNN
F 3 "" H 9100 3850 50  0001 C CNN
	1    9100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3850 9100 3950
$Comp
L power:GND #PWR027
U 1 1 5BFD5A2F
P 9100 5250
F 0 "#PWR027" H 9100 5000 50  0001 C CNN
F 1 "GND" H 9105 5077 50  0000 C CNN
F 2 "" H 9100 5250 50  0001 C CNN
F 3 "" H 9100 5250 50  0001 C CNN
	1    9100 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5150 9100 5200
Wire Wire Line
	9100 5200 8850 5200
Connection ~ 9100 5200
Wire Wire Line
	9100 5200 9100 5250
Wire Wire Line
	8850 4600 8850 4350
Wire Wire Line
	8850 4350 9100 4350
Wire Wire Line
	8850 5000 8850 5200
Text GLabel 8850 4350 0    50   Input ~ 0
B6
Text GLabel 4550 1700 0    50   Input ~ 0
B3
Text GLabel 4550 1600 0    50   Input ~ 0
B4
Text GLabel 4550 1500 0    50   Input ~ 0
B5
Text GLabel 4550 1400 0    50   Input ~ 0
B6
Wire Wire Line
	4550 1700 4700 1700
Wire Wire Line
	4550 1600 4700 1600
Wire Wire Line
	4550 1500 4700 1500
Wire Wire Line
	4550 1400 4700 1400
$Comp
L power:+3V3 #PWR028
U 1 1 5C001FC5
P 9750 1900
F 0 "#PWR028" H 9750 1750 50  0001 C CNN
F 1 "+3V3" V 9765 2028 50  0000 L CNN
F 2 "" H 9750 1900 50  0001 C CNN
F 3 "" H 9750 1900 50  0001 C CNN
	1    9750 1900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5C0022AD
P 9750 2000
F 0 "#PWR029" H 9750 1750 50  0001 C CNN
F 1 "GND" V 9755 1872 50  0000 R CNN
F 2 "" H 9750 2000 50  0001 C CNN
F 3 "" H 9750 2000 50  0001 C CNN
	1    9750 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	9750 1900 9850 1900
Wire Wire Line
	9850 1900 9850 1850
Wire Wire Line
	9750 2000 9950 2000
Wire Wire Line
	9950 2000 9950 1850
Wire Wire Line
	10050 1850 10050 2150
Wire Wire Line
	10150 1850 10150 2250
$Comp
L SparkFun-Boards:ARDUINO_PRO_MINI B?
U 1 1 5C01C3E7
P 8450 1800
F 0 "B?" H 8450 846 45  0000 C CNN
F 1 "ARDUINO_PRO_MINI" H 8450 930 45  0000 C CNN
F 2 "ARDUINO_PRO_MINI" H 8450 2750 20  0001 C CNN
F 3 "https://learn.sparkfun.com/tutorials/using-the-arduino-pro-mini-33v/all" H 8450 1800 50  0001 C CNN
	1    8450 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	9250 2150 9250 1100
Wire Wire Line
	9250 1100 8900 1100
Wire Wire Line
	9150 2250 9150 1200
Wire Wire Line
	9150 1200 8900 1200
Wire Wire Line
	9250 2150 10050 2150
Wire Wire Line
	9150 2250 10150 2250
Text GLabel 9000 2500 2    50   Input ~ 0
ESP32_RX
Text GLabel 9000 2400 2    50   Input ~ 0
ESP32_TX
Text GLabel 7900 1600 0    50   Input ~ 0
B1
Text GLabel 7900 1700 0    50   Input ~ 0
B2
$Comp
L power:+5V #PWR?
U 1 1 5C0257AA
P 7900 2500
F 0 "#PWR?" H 7900 2350 50  0001 C CNN
F 1 "+5V" V 7915 2628 50  0000 L CNN
F 2 "" H 7900 2500 50  0001 C CNN
F 3 "" H 7900 2500 50  0001 C CNN
	1    7900 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C025A4F
P 7900 2400
F 0 "#PWR?" H 7900 2150 50  0001 C CNN
F 1 "GND" V 7905 2272 50  0000 R CNN
F 2 "" H 7900 2400 50  0001 C CNN
F 3 "" H 7900 2400 50  0001 C CNN
	1    7900 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 2400 9000 2400
Wire Wire Line
	8900 2500 9000 2500
Wire Wire Line
	7900 2500 8000 2500
Wire Wire Line
	7900 2400 8000 2400
Wire Wire Line
	7900 1700 8000 1700
Wire Wire Line
	7900 1600 8000 1600
$EndSCHEMATC
