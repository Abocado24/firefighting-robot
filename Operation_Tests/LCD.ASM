
; PICBASIC PRO(TM) Compiler 2.50a, (c) 1998, 2007 microEngineering Labs, Inc. All Rights Reserved.  
PM_USED			EQU	1

	INCLUDE	"16F887.INC"


; Define statements.
#define		CODE_SIZE		 8
#define		ADC_BITS		 8
#define		ADC_CLOCK		 3
#define		ADC_SAMPLEUS		 50
#define		LCD_DREG		 PORTC   
#define		LCD_DBIT		 4       
#define		LCD_RSREG		 PORTC  
#define		LCD_RSBIT		 3      
#define		LCD_EREG		 PORTC
#define		LCD_EBIT		 2
#define		LCD_RWREG		 PORTE
#define		LCD_RWBIT		 2
#define		LCD_BITS		 4
#define		LCD_LINES		 2
#define		LCD_COMMANDUS		 2000
#define		LCD_DATAUS		 50
#define		OSC		 4

RAM_START       		EQU	00020h
RAM_END         		EQU	001EFh
RAM_BANKS       		EQU	00004h
BANK0_START     		EQU	00020h
BANK0_END       		EQU	0007Fh
BANK1_START     		EQU	000A0h
BANK1_END       		EQU	000EFh
BANK2_START     		EQU	00110h
BANK2_END       		EQU	0016Fh
BANK3_START     		EQU	00190h
BANK3_END       		EQU	001EFh
EEPROM_START    		EQU	02100h
EEPROM_END      		EQU	021FFh

R0              		EQU	RAM_START + 000h
R1              		EQU	RAM_START + 002h
R2              		EQU	RAM_START + 004h
R3              		EQU	RAM_START + 006h
R4              		EQU	RAM_START + 008h
R5              		EQU	RAM_START + 00Ah
R6              		EQU	RAM_START + 00Ch
R7              		EQU	RAM_START + 00Eh
R8              		EQU	RAM_START + 010h
FLAGS           		EQU	RAM_START + 012h
GOP             		EQU	RAM_START + 013h
RM1             		EQU	RAM_START + 014h
RM2             		EQU	RAM_START + 015h
RR1             		EQU	RAM_START + 016h
RR2             		EQU	RAM_START + 017h
_PORTL           		EQU	 PORTB
_PORTH           		EQU	 PORTC
_TRISL           		EQU	 TRISB
_TRISH           		EQU	 TRISC
#define _PORTD??0        	 PORTD, 000h
	INCLUDE	"LCD.MAC"
	INCLUDE	"PBPPIC14.LIB"

	MOVE?CB	0C0h, ADCON0
	MOVE?CB	001h, TRISD
	MOVE?CB	000h, TRISB
	PAUSE?C	064h

	LABEL?L	_Main	
	CMPNE?TCL	_PORTD??0, 000h, L00001
	MOVE?CB	025h, PORTB
	LCDOUT?C	0FEh
	LCDOUT?C	001h
	LCDOUT?C	042h
	LCDOUT?C	06Ch
	LCDOUT?C	061h
	LCDOUT?C	063h
	LCDOUT?C	06Bh
	LABEL?L	L00001	
	CMPNE?TCL	_PORTD??0, 001h, L00003
	MOVE?CB	00Ah, PORTB
	LCDOUT?C	0FEh
	LCDOUT?C	001h
	LCDOUT?C	057h
	LCDOUT?C	068h
	LCDOUT?C	069h
	LCDOUT?C	074h
	LCDOUT?C	065h
	LABEL?L	L00003	
	PAUSE?C	001F4h
	GOTO?L	_Main

	END
