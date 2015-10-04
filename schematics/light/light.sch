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
LIBS:light-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "17 aug 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_4X2 P1
U 1 1 55D1A41A
P 2750 900
F 0 "P1" H 2750 1150 50  0000 C CNN
F 1 "CONN_4X2" V 2750 900 40  0000 C CNN
F 2 "~" H 2750 900 60  0000 C CNN
F 3 "~" H 2750 900 60  0000 C CNN
	1    2750 900 
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR2
U 1 1 55D1A45C
P 750 2150
F 0 "#PWR2" H 750 2100 20  0001 C CNN
F 1 "+BATT" H 750 2250 30  0000 C CNN
F 2 "" H 750 2150 60  0000 C CNN
F 3 "" H 750 2150 60  0000 C CNN
	1    750  2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	750  2150 1450 2150
$Comp
L GND #PWR1
U 1 1 55D1A46C
P 650 1650
F 0 "#PWR1" H 650 1650 30  0001 C CNN
F 1 "GND" H 650 1580 30  0001 C CNN
F 2 "" H 650 1650 60  0000 C CNN
F 3 "" H 650 1650 60  0000 C CNN
	1    650  1650
	0    1    1    0   
$EndComp
Wire Wire Line
	650  1650 1450 1650
$Comp
L RVAR R1
U 1 1 55D1A484
P 900 2450
F 0 "R1" V 980 2400 50  0000 C CNN
F 1 "RVAR" V 820 2510 50  0000 C CNN
F 2 "~" H 900 2450 60  0000 C CNN
F 3 "~" H 900 2450 60  0000 C CNN
	1    900  2450
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 55D1A493
P 1300 2150
F 0 "R2" V 1380 2150 40  0000 C CNN
F 1 "R" V 1307 2151 40  0000 C CNN
F 2 "~" V 1230 2150 30  0000 C CNN
F 3 "~" H 1300 2150 30  0000 C CNN
	1    1300 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	900  1050 900  2200
Connection ~ 900  2150
Wire Wire Line
	1300 1400 1300 1900
Connection ~ 1300 1650
Wire Wire Line
	4400 2700 900  2700
Wire Wire Line
	4400 950  4400 2700
Wire Wire Line
	4400 1850 4150 1850
Wire Wire Line
	1300 2400 1300 2700
Connection ~ 1300 2700
$Comp
L ATTINY85-P IC1
U 1 1 55D1A42E
P 2800 1900
F 0 "IC1" H 1650 2300 40  0000 C CNN
F 1 "ATTINY85-P" H 3800 1500 40  0000 C CNN
F 2 "DIP8" H 3800 1900 35  0000 C CIN
F 3 "~" H 2800 1900 60  0000 C CNN
	1    2800 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 1050 3150 1400
Wire Wire Line
	3150 1400 1300 1400
Wire Wire Line
	900  1050 2350 1050
Wire Wire Line
	2350 950  2100 950 
Wire Wire Line
	2100 950  2100 1250
Wire Wire Line
	2100 1250 4300 1250
Wire Wire Line
	4300 1250 4300 1750
Wire Wire Line
	4300 1750 4150 1750
Wire Wire Line
	3150 950  4400 950 
Connection ~ 4400 1850
Wire Wire Line
	2350 850  2000 850 
Wire Wire Line
	2000 850  2000 600 
Wire Wire Line
	2000 600  4200 600 
Wire Wire Line
	4200 600  4200 2050
Wire Wire Line
	4200 2050 4150 2050
Wire Wire Line
	3150 850  4500 850 
Wire Wire Line
	4500 850  4500 1950
Wire Wire Line
	4500 1950 4150 1950
Wire Wire Line
	3150 750  4600 750 
Wire Wire Line
	4600 750  4600 2150
Wire Wire Line
	4600 2150 4150 2150
Text Notes 1100 3200 0    60   ~ 0
Light Sensor Node \nV 0.1\n
$Comp
L BATTERY BT1
U 1 1 55D1ACCA
P 1250 3850
F 0 "BT1" H 1250 4050 50  0000 C CNN
F 1 "BATTERY" H 1250 3660 50  0000 C CNN
F 2 "~" H 1250 3850 60  0000 C CNN
F 3 "~" H 1250 3850 60  0000 C CNN
	1    1250 3850
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR3
U 1 1 55D1ACD9
P 850 3850
F 0 "#PWR3" H 850 3800 20  0001 C CNN
F 1 "+BATT" H 850 3950 30  0000 C CNN
F 2 "" H 850 3850 60  0000 C CNN
F 3 "" H 850 3850 60  0000 C CNN
	1    850  3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  3850 950  3850
$Comp
L GND #PWR4
U 1 1 55D1AD09
P 1650 3900
F 0 "#PWR4" H 1650 3900 30  0001 C CNN
F 1 "GND" H 1650 3830 30  0001 C CNN
F 2 "" H 1650 3900 60  0000 C CNN
F 3 "" H 1650 3900 60  0000 C CNN
	1    1650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3850 1650 3850
Wire Wire Line
	1650 3850 1650 3900
$EndSCHEMATC