EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
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
LIBS:rgb_strip-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "9 oct 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MOSFET_N Q?
U 1 1 55D36436
P 950 2300
F 0 "Q?" H 960 2470 60  0000 R CNN
F 1 "MOSFET_N" H 960 2150 60  0000 R CNN
F 2 "~" H 950 2300 60  0000 C CNN
F 3 "~" H 950 2300 60  0000 C CNN
	1    950  2300
	0    -1   -1   0   
$EndComp
$Comp
L MOSFET_N Q?
U 1 1 55D36443
P 1500 2300
F 0 "Q?" H 1510 2470 60  0000 R CNN
F 1 "MOSFET_N" H 1510 2150 60  0000 R CNN
F 2 "~" H 1500 2300 60  0000 C CNN
F 3 "~" H 1500 2300 60  0000 C CNN
	1    1500 2300
	0    -1   -1   0   
$EndComp
$Comp
L MOSFET_N Q?
U 1 1 55D36449
P 2050 2300
F 0 "Q?" H 2060 2470 60  0000 R CNN
F 1 "MOSFET_N" H 2060 2150 60  0000 R CNN
F 2 "~" H 2050 2300 60  0000 C CNN
F 3 "~" H 2050 2300 60  0000 C CNN
	1    2050 2300
	0    -1   -1   0   
$EndComp
$Comp
L LED D?
U 1 1 55D36451
P 750 1900
F 0 "D?" H 750 2000 50  0000 C CNN
F 1 "LED" H 750 1800 50  0000 C CNN
F 2 "~" H 750 1900 60  0000 C CNN
F 3 "~" H 750 1900 60  0000 C CNN
	1    750  1900
	0    1    1    0   
$EndComp
$Comp
L LED D?
U 1 1 55D36468
P 1300 1900
F 0 "D?" H 1300 2000 50  0000 C CNN
F 1 "LED" H 1300 1800 50  0000 C CNN
F 2 "~" H 1300 1900 60  0000 C CNN
F 3 "~" H 1300 1900 60  0000 C CNN
	1    1300 1900
	0    1    1    0   
$EndComp
$Comp
L LED D?
U 1 1 55D3646E
P 1850 1900
F 0 "D?" H 1850 2000 50  0000 C CNN
F 1 "LED" H 1850 1800 50  0000 C CNN
F 2 "~" H 1850 1900 60  0000 C CNN
F 3 "~" H 1850 1900 60  0000 C CNN
	1    1850 1900
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR?
U 1 1 55D36485
P 1300 1600
F 0 "#PWR?" H 1300 1550 20  0001 C CNN
F 1 "+12V" H 1300 1700 30  0000 C CNN
F 2 "" H 1300 1600 60  0000 C CNN
F 3 "" H 1300 1600 60  0000 C CNN
	1    1300 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1600 1300 1700
Wire Wire Line
	750  1700 750  1650
Wire Wire Line
	750  1650 1850 1650
Connection ~ 1300 1650
Wire Wire Line
	1850 1650 1850 1700
Wire Wire Line
	750  2200 750  2100
Wire Wire Line
	1300 2100 1300 2200
Wire Wire Line
	1850 2100 1850 2200
$Comp
L GND #PWR?
U 1 1 55D364C2
P 600 2250
F 0 "#PWR?" H 600 2250 30  0001 C CNN
F 1 "GND" H 600 2180 30  0001 C CNN
F 2 "" H 600 2250 60  0000 C CNN
F 3 "" H 600 2250 60  0000 C CNN
	1    600  2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  2250 600  2150
Text GLabel 1500 2600 3    60   Input ~ 0
PWM_G
Text GLabel 950  2600 3    60   Input ~ 0
PWM_R
Text GLabel 2050 2600 3    60   Input ~ 0
PWM_B
Wire Wire Line
	950  2600 950  2500
Wire Wire Line
	1500 2600 1500 2500
Wire Wire Line
	2050 2600 2050 2500
Wire Wire Line
	1150 2200 1150 2150
Wire Wire Line
	600  2150 2250 2150
Wire Wire Line
	1700 2150 1700 2200
Connection ~ 1150 2150
Wire Wire Line
	2250 2150 2250 2200
Connection ~ 1700 2150
Text Notes 700  850  0    60   ~ 0
MOSFETS:\n\nGate voltage < 3.3V\nDrain/Source tension: at least 12 V\nPer channel max curr > 1A\n\nGenre: STP16NF06
$Comp
L BARREL_JACK CON?
U 1 1 55D367B4
P 1050 4150
F 0 "CON?" H 1050 4400 60  0000 C CNN
F 1 "BARREL_JACK" H 1050 3950 60  0000 C CNN
F 2 "~" H 1050 4150 60  0000 C CNN
F 3 "~" H 1050 4150 60  0000 C CNN
	1    1050 4150
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR?
U 1 1 55D367C3
P 1450 3950
F 0 "#PWR?" H 1450 3900 20  0001 C CNN
F 1 "+12V" H 1450 4050 30  0000 C CNN
F 2 "" H 1450 3950 60  0000 C CNN
F 3 "" H 1450 3950 60  0000 C CNN
	1    1450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4050 1450 4050
Wire Wire Line
	1450 4050 1450 3950
$Comp
L GND #PWR?
U 1 1 55D367E5
P 1450 4350
F 0 "#PWR?" H 1450 4350 30  0001 C CNN
F 1 "GND" H 1450 4280 30  0001 C CNN
F 2 "" H 1450 4350 60  0000 C CNN
F 3 "" H 1450 4350 60  0000 C CNN
	1    1450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4250 1450 4250
Wire Wire Line
	1450 4250 1450 4350
$Comp
L ATTINY85-P IC?
U 1 1 55D36809
P 5050 1950
F 0 "IC?" H 3900 2350 40  0000 C CNN
F 1 "ATTINY85-P" H 6050 1550 40  0000 C CNN
F 2 "DIP8" H 6050 1950 35  0000 C CIN
F 3 "~" H 5050 1950 60  0000 C CNN
	1    5050 1950
	-1   0    0    1   
$EndComp
$Comp
L LM7805 U?
U 1 1 55D38B33
P 2350 4000
F 0 "U?" H 2500 3804 60  0000 C CNN
F 1 "LM7805" H 2350 4200 60  0000 C CNN
F 2 "~" H 2350 4000 60  0000 C CNN
F 3 "~" H 2350 4000 60  0000 C CNN
	1    2350 4000
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 55D45C3A
P 1850 4250
F 0 "C?" H 1850 4350 40  0000 L CNN
F 1 "100nF" H 1856 4165 40  0000 L CNN
F 2 "~" H 1888 4100 30  0000 C CNN
F 3 "~" H 1850 4250 60  0000 C CNN
	1    1850 4250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 55D45C47
P 2850 4250
F 0 "C?" H 2850 4350 40  0000 L CNN
F 1 "100nF" H 2856 4165 40  0000 L CNN
F 2 "~" H 2888 4100 30  0000 C CNN
F 3 "~" H 2850 4250 60  0000 C CNN
	1    2850 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3850 1850 4050
Connection ~ 1850 3950
Wire Wire Line
	2750 3950 2850 3950
Wire Wire Line
	2850 3850 2850 4050
$Comp
L GND #PWR?
U 1 1 55D45CC0
P 2350 4650
F 0 "#PWR?" H 2350 4650 30  0001 C CNN
F 1 "GND" H 2350 4580 30  0001 C CNN
F 2 "" H 2350 4650 60  0000 C CNN
F 3 "" H 2350 4650 60  0000 C CNN
	1    2350 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4450 2850 4450
Wire Wire Line
	2350 4250 2350 4650
Connection ~ 2350 4450
$Comp
L +5V #PWR?
U 1 1 55D45D2A
P 2850 3850
F 0 "#PWR?" H 2850 3940 20  0001 C CNN
F 1 "+5V" H 2850 3940 30  0000 C CNN
F 2 "" H 2850 3850 60  0000 C CNN
F 3 "" H 2850 3850 60  0000 C CNN
	1    2850 3850
	1    0    0    -1  
$EndComp
Connection ~ 2850 3950
Wire Wire Line
	1850 3950 1950 3950
$Comp
L +12V #PWR?
U 1 1 55D45D98
P 1850 3850
F 0 "#PWR?" H 1850 3800 20  0001 C CNN
F 1 "+12V" H 1850 3950 30  0000 C CNN
F 2 "" H 1850 3850 60  0000 C CNN
F 3 "" H 1850 3850 60  0000 C CNN
	1    1850 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55D45E65
P 3600 1800
F 0 "#PWR?" H 3600 1800 30  0001 C CNN
F 1 "GND" H 3600 1730 30  0001 C CNN
F 2 "" H 3600 1800 60  0000 C CNN
F 3 "" H 3600 1800 60  0000 C CNN
	1    3600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1700 3600 1700
Wire Wire Line
	3600 1700 3600 1800
$Comp
L +5V #PWR?
U 1 1 55D45E94
P 3600 2100
F 0 "#PWR?" H 3600 2190 20  0001 C CNN
F 1 "+5V" H 3600 2190 30  0000 C CNN
F 2 "" H 3600 2100 60  0000 C CNN
F 3 "" H 3600 2100 60  0000 C CNN
	1    3600 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2100 3600 2200
Wire Wire Line
	3600 2200 3700 2200
Text GLabel 7050 1950 2    60   Input ~ 0
PWM_R
Text GLabel 7050 2200 2    60   Input ~ 0
PWM_R
Text GLabel 7050 1700 2    60   Input ~ 0
PWM_R
$Comp
L CONN_4X2 P?
U 1 1 5617F9A3
P 7200 1150
F 0 "P?" H 7200 1400 50  0000 C CNN
F 1 "CONN_4X2" V 7200 1150 40  0000 C CNN
F 2 "~" H 7200 1150 60  0000 C CNN
F 3 "~" H 7200 1150 60  0000 C CNN
	1    7200 1150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
