
; lavra assembler source
; created by lavrc version 2014.r2.4
; parsed and optimized code
; you can assemble this file directly with the luna compiler/assembler

	 
	.device	atmega8
	 
.equ	_CLOCK		= 16000000
	 
	;direcValues
.equ	AvrTiny		= 0
.equ	EepromAccess		= 0
.equ	EepromAccessHigh		= 1
.equ	StringTempVarAccess		= 0
.equ	FracDecimalS		= 7
.equ	CodeStartAddr		= 0
.equ	SoftUartModeInverted		= 0
.equ	InpstrEcho		= 1
.equ	MemoryBlockMode		= 1
.equ	stackSize		= 64
.equ	AVR_CORE		= 3
.equ	AvrAccessHigh		= 1
	 
	;avrEqus
.equ	bootStart		= 0x0
.equ	sramStart		= 96
.equ	sramEnd		= 1119
.equ	xramEnd		= 0x0000
.equ	sramSize		= 1024
.equ	eramStart		= 0
.equ	eramEnd		= 512
.equ	eramSize		= 512
.equ	eramPageSize		= 0
.equ	flashEnd		= 0x0fff
.equ	flashSize		= 8192
.equ	intVectorSize		= 19
.equ	AVR_HWMUL		= 1
.equ	AVR_HWJMP		= 0
.equ	AVR_ADDRWRAP		= 1
.equ	uartCount		= 1
.equ	stackEnd		= sramEnd-stackSize
.equ	GLST_MB_MAIN_LOCK		= 4
.equ	GLST_MB_DATA_LOCK		= 5
.equ	OBJ_SRAM		= 0
.equ	OBJ_STMP		= 1
.equ	OBJ_MBLK		= 2
.equ	OBJ_CRAM		= 3
.equ	OBJ_ERAM		= 4
.equ	SIGNATURE_000		= 0x1e
.equ	SIGNATURE_001		= 0x93
.equ	SIGNATURE_002		= 0x07
.equ	SREG		= 0x3f
.equ	SPL		= 0x3d
.equ	SPH		= 0x3e
.equ	GICR		= 0x3b
.equ	GIFR		= 0x3a
.equ	TIMSK		= 0x39
.equ	TIFR		= 0x38
.equ	SPMCR		= 0x37
.equ	TWCR		= 0x36
.equ	MCUCR		= 0x35
.equ	MCUCSR		= 0x34
.equ	TCCR0		= 0x33
.equ	OSCCAL		= 0x31
.equ	SFIOR		= 0x30
.equ	TCCR1A		= 0x2f
.equ	TCCR1B		= 0x2e
.equ	OCR1AL		= 0x2a
.equ	OCR1AH		= 0x2b
.equ	OCR1BL		= 0x28
.equ	OCR1BH		= 0x29
.equ	ICR1L		= 0x26
.equ	ICR1H		= 0x27
.equ	TCCR2		= 0x25
.equ	OCR2		= 0x23
.equ	ASSR		= 0x22
.equ	WDTCR		= 0x21
.equ	UBRRH		= 0x20
.equ	UCSRC		= 0x20
.equ	EEARL		= 0x1e
.equ	EEARH		= 0x1f
.equ	EEDR		= 0x1d
.equ	EECR		= 0x1c
.equ	DDRB		= 0x17
.equ	PINB		= 0x16
.equ	DDRC		= 0x14
.equ	PINC		= 0x13
.equ	DDRD		= 0x11
.equ	PIND		= 0x10
.equ	SPDR		= 0x0f
.equ	SPSR		= 0x0e
.equ	SPCR		= 0x0d
.equ	UDR		= 0x0c
.equ	UCSRA		= 0x0b
.equ	UCSRB		= 0x0a
.equ	UBRRL		= 0x09
.equ	ACSR		= 0x08
.equ	ADCSRA		= 0x06
.equ	ADCL		= 0x04
.equ	ADCH		= 0x05
.equ	TWDR		= 0x03
.equ	TWAR		= 0x02
.equ	TWSR		= 0x01
.equ	TWBR		= 0x00
.equ	ACME		= 3
.equ	ACIS0		= 0
.equ	ACIS1		= 1
.equ	ACIC		= 2
.equ	ACIE		= 3
.equ	ACI		= 4
.equ	ACO		= 5
.equ	ACBG		= 6
.equ	ACD		= 7
.equ	SPDR0		= 0
.equ	SPDR1		= 1
.equ	SPDR2		= 2
.equ	SPDR3		= 3
.equ	SPDR4		= 4
.equ	SPDR5		= 5
.equ	SPDR6		= 6
.equ	SPDR7		= 7
.equ	SPI2X		= 0
.equ	WCOL		= 6
.equ	SPIF		= 7
.equ	SPR0		= 0
.equ	SPR1		= 1
.equ	CPHA		= 2
.equ	CPOL		= 3
.equ	MSTR		= 4
.equ	DORD		= 5
.equ	SPE		= 6
.equ	SPIE		= 7
.equ	GIMSK		= 0x3b
.equ	IVCE		= 0
.equ	IVSEL		= 1
.equ	INT0		= 6
.equ	INT1		= 7
.equ	INTF0		= 6
.equ	INTF1		= 7
.equ	ISC00		= 0
.equ	ISC01		= 1
.equ	ISC10		= 2
.equ	ISC11		= 3
.equ	TOIE0		= 0
.equ	TOV0		= 0
.equ	CS00		= 0
.equ	CS01		= 1
.equ	CS02		= 2
.equ	TOIE1		= 2
.equ	OCIE1B		= 3
.equ	OCIE1A		= 4
.equ	TICIE1		= 5
.equ	TOV1		= 2
.equ	OCF1B		= 3
.equ	OCF1A		= 4
.equ	ICF1		= 5
.equ	WGM10		= 0
.equ	PWM10		= 0
.equ	WGM11		= 1
.equ	PWM11		= 1
.equ	FOC1B		= 2
.equ	FOC1A		= 3
.equ	COM1B0		= 4
.equ	COM1B1		= 5
.equ	COM1A0		= 6
.equ	COM1A1		= 7
.equ	CS10		= 0
.equ	CS11		= 1
.equ	CS12		= 2
.equ	WGM12		= 3
.equ	CTC10		= 3
.equ	CTC1		= 3
.equ	WGM13		= 4
.equ	CTC11		= 4
.equ	ICES1		= 6
.equ	ICNC1		= 7
.equ	TOIE2		= 6
.equ	OCIE2		= 7
.equ	TOV2		= 6
.equ	OCF2		= 7
.equ	CS20		= 0
.equ	CS21		= 1
.equ	CS22		= 2
.equ	WGM21		= 3
.equ	CTC2		= 3
.equ	COM20		= 4
.equ	COM21		= 5
.equ	WGM20		= 6
.equ	PWM2		= 6
.equ	FOC2		= 7
.equ	OCR2_0		= 0
.equ	OCR2_1		= 1
.equ	OCR2_2		= 2
.equ	OCR2_3		= 3
.equ	OCR2_4		= 4
.equ	OCR2_5		= 5
.equ	OCR2_6		= 6
.equ	OCR2_7		= 7
.equ	TCR2UB		= 0
.equ	OCR2UB		= 1
.equ	TCN2UB		= 2
.equ	AS2		= 3
.equ	PSR2		= 1
.equ	UDR0		= 0x0c
.equ	UDR1		= 1
.equ	UDR2		= 2
.equ	UDR3		= 3
.equ	UDR4		= 4
.equ	UDR5		= 5
.equ	UDR6		= 6
.equ	UDR7		= 7
.equ	USR		= 0x0b
.equ	MPCM		= 0
.equ	U2X		= 1
.equ	UPE		= 2
.equ	PE		= 2
.equ	DOR		= 3
.equ	FE		= 4
.equ	UDRE		= 5
.equ	TXC		= 6
.equ	RXC		= 7
.equ	UCR		= 0x0a
.equ	TXB8		= 0
.equ	RXB8		= 1
.equ	UCSZ2		= 2
.equ	CHR9		= 2
.equ	TXEN		= 3
.equ	RXEN		= 4
.equ	UDRIE		= 5
.equ	TXCIE		= 6
.equ	RXCIE		= 7
.equ	UCPOL		= 0
.equ	UCSZ0		= 1
.equ	UCSZ1		= 2
.equ	USBS		= 3
.equ	UPM0		= 4
.equ	UPM1		= 5
.equ	UMSEL		= 6
.equ	URSEL		= 7
.equ	UBRRHI		= 0x20
.equ	I2BR		= 0x00
.equ	TWBR0		= 0
.equ	TWBR1		= 1
.equ	TWBR2		= 2
.equ	TWBR3		= 3
.equ	TWBR4		= 4
.equ	TWBR5		= 5
.equ	TWBR6		= 6
.equ	TWBR7		= 7
.equ	I2CR		= 0x36
.equ	TWIE		= 0
.equ	I2IE		= 0
.equ	TWEN		= 2
.equ	I2EN		= 2
.equ	ENI2C		= 2
.equ	TWWC		= 3
.equ	I2WC		= 3
.equ	TWSTO		= 4
.equ	I2STO		= 4
.equ	TWSTA		= 5
.equ	I2STA		= 5
.equ	TWEA		= 6
.equ	I2EA		= 6
.equ	TWINT		= 7
.equ	I2INT		= 7
.equ	I2SR		= 0x01
.equ	TWPS0		= 0
.equ	TWS0		= 0
.equ	I2GCE		= 0
.equ	TWPS1		= 1
.equ	TWS1		= 1
.equ	TWS3		= 3
.equ	I2S3		= 3
.equ	TWS4		= 4
.equ	I2S4		= 4
.equ	TWS5		= 5
.equ	I2S5		= 5
.equ	TWS6		= 6
.equ	I2S6		= 6
.equ	TWS7		= 7
.equ	I2S7		= 7
.equ	I2DR		= 0x03
.equ	TWD0		= 0
.equ	TWD1		= 1
.equ	TWD2		= 2
.equ	TWD3		= 3
.equ	TWD4		= 4
.equ	TWD5		= 5
.equ	TWD6		= 6
.equ	TWD7		= 7
.equ	I2AR		= 0x02
.equ	TWGCE		= 0
.equ	TWA0		= 1
.equ	TWA1		= 2
.equ	TWA2		= 3
.equ	TWA3		= 4
.equ	TWA4		= 5
.equ	TWA5		= 6
.equ	TWA6		= 7
.equ	WDTCSR		= 0x21
.equ	WDP0		= 0
.equ	WDP1		= 1
.equ	WDP2		= 2
.equ	WDE		= 3
.equ	WDCE		= 4
.equ	WDTOE		= 4
.equ	PB0		= 0
.equ	PB1		= 1
.equ	PB2		= 2
.equ	PB3		= 3
.equ	PB4		= 4
.equ	PB5		= 5
.equ	PB6		= 6
.equ	PB7		= 7
.equ	DDB0		= 0
.equ	DDB1		= 1
.equ	DDB2		= 2
.equ	DDB3		= 3
.equ	DDB4		= 4
.equ	DDB5		= 5
.equ	DDB6		= 6
.equ	DDB7		= 7
.equ	PINB0		= 0
.equ	PINB1		= 1
.equ	PINB2		= 2
.equ	PINB3		= 3
.equ	PINB4		= 4
.equ	PINB5		= 5
.equ	PINB6		= 6
.equ	PINB7		= 7
.equ	PC0		= 0
.equ	PC1		= 1
.equ	PC2		= 2
.equ	PC3		= 3
.equ	PC4		= 4
.equ	PC5		= 5
.equ	PC6		= 6
.equ	DDC0		= 0
.equ	DDC1		= 1
.equ	DDC2		= 2
.equ	DDC3		= 3
.equ	DDC4		= 4
.equ	DDC5		= 5
.equ	DDC6		= 6
.equ	PINC0		= 0
.equ	PINC1		= 1
.equ	PINC2		= 2
.equ	PINC3		= 3
.equ	PINC4		= 4
.equ	PINC5		= 5
.equ	PINC6		= 6
.equ	PD0		= 0
.equ	PD1		= 1
.equ	PD2		= 2
.equ	PD3		= 3
.equ	PD4		= 4
.equ	PD5		= 5
.equ	PD6		= 6
.equ	PD7		= 7
.equ	DDD0		= 0
.equ	DDD1		= 1
.equ	DDD2		= 2
.equ	DDD3		= 3
.equ	DDD4		= 4
.equ	DDD5		= 5
.equ	DDD6		= 6
.equ	DDD7		= 7
.equ	PIND0		= 0
.equ	PIND1		= 1
.equ	PIND2		= 2
.equ	PIND3		= 3
.equ	PIND4		= 4
.equ	PIND5		= 5
.equ	PIND6		= 6
.equ	PIND7		= 7
.equ	EEDR0		= 0
.equ	EEDR1		= 1
.equ	EEDR2		= 2
.equ	EEDR3		= 3
.equ	EEDR4		= 4
.equ	EEDR5		= 5
.equ	EEDR6		= 6
.equ	EEDR7		= 7
.equ	EERE		= 0
.equ	EEWE		= 1
.equ	EEMWE		= 2
.equ	EEWEE		= 2
.equ	EERIE		= 3
.equ	SREG_C		= 0
.equ	SREG_Z		= 1
.equ	SREG_N		= 2
.equ	SREG_V		= 3
.equ	SREG_S		= 4
.equ	SREG_H		= 5
.equ	SREG_T		= 6
.equ	SREG_I		= 7
.equ	SM0		= 4
.equ	SM1		= 5
.equ	SM2		= 6
.equ	SE		= 7
.equ	MCUSR		= 0x34
.equ	PORF		= 0
.equ	EXTRF		= 1
.equ	BORF		= 2
.equ	WDRF		= 3
.equ	CAL0		= 0
.equ	CAL1		= 1
.equ	CAL2		= 2
.equ	CAL3		= 3
.equ	CAL4		= 4
.equ	CAL5		= 5
.equ	CAL6		= 6
.equ	CAL7		= 7
.equ	SPMEN		= 0
.equ	PGERS		= 1
.equ	PGWRT		= 2
.equ	BLBSET		= 3
.equ	RWWSRE		= 4
.equ	RWWSB		= 6
.equ	SPMIE		= 7
.equ	PSR10		= 0
.equ	PUD		= 2
.equ	ADHSM		= 4
.equ	MUX0		= 0
.equ	MUX1		= 1
.equ	MUX2		= 2
.equ	MUX3		= 3
.equ	ADLAR		= 5
.equ	REFS0		= 6
.equ	REFS1		= 7
.equ	ADCSR		= 0x06
.equ	ADPS0		= 0
.equ	ADPS1		= 1
.equ	ADPS2		= 2
.equ	ADIE		= 3
.equ	ADIF		= 4
.equ	ADFR		= 5
.equ	ADSC		= 6
.equ	ADEN		= 7
.equ	LB1		= 0
.equ	LB2		= 1
.equ	BLB01		= 2
.equ	BLB02		= 3
.equ	BLB11		= 4
.equ	BLB12		= 5
.equ	CKSEL0		= 0
.equ	CKSEL1		= 1
.equ	CKSEL2		= 2
.equ	CKSEL3		= 3
.equ	SUT0		= 4
.equ	SUT1		= 5
.equ	BODEN		= 6
.equ	BODLEVEL		= 7
.equ	BOOTRST		= 0
.equ	BOOTSZ0		= 1
.equ	BOOTSZ1		= 2
.equ	EESAVE		= 3
.equ	CKOPT		= 4
.equ	SPIEN		= 5
.equ	WTDON		= 6
.equ	RSTDISBL		= 7
.equ	IOEND		= 0x003f
.equ	SRAM_START		= 0x0060
.equ	SRAM_SIZE		= 1024
.equ	RAMEND		= 0x045f
.equ	E2END		= 0x01ff
.equ	EEPROMEND		= 0x01ff
.equ	EEADRBITS		= 9
.equ	NRWW_START_ADDR		= 0xc00
.equ	NRWW_STOP_ADDR		= 0xfff
.equ	RWW_START_ADDR		= 0x0
.equ	RWW_STOP_ADDR		= 0xbff
.equ	PAGESIZE		= 32
.equ	FIRSTBOOTSTART		= 0xf80
.equ	SECONDBOOTSTART		= 0xf00
.equ	THIRDBOOTSTART		= 0xe00
.equ	FOURTHBOOTSTART		= 0xc00
.equ	SMALLBOOTSTART		= 0xf80
.equ	LARGEBOOTSTART		= 0xc00
.equ	INT0addr		= 0x0001
.equ	INT1addr		= 0x0002
.equ	OC2addr		= 0x0003
.equ	OVF2addr		= 0x0004
.equ	ICP1addr		= 0x0005
.equ	OC1Aaddr		= 0x0006
.equ	OC1Baddr		= 0x0007
.equ	OVF1addr		= 0x0008
.equ	OVF0addr		= 0x0009
.equ	SPIaddr		= 0x000a
.equ	URXCaddr		= 0x000b
.equ	UDREaddr		= 0x000c
.equ	UTXCaddr		= 0x000d
.equ	ADCCaddr		= 0x000e
.equ	ERDYaddr		= 0x000f
.equ	ACIaddr		= 0x0010
.equ	TWIaddr		= 0x0011
.equ	SPMRaddr		= 0x0012
.equ	SPMCSR		= 0x37
.equ	TCNT0		= 0x32
.equ	COUNTER0		= 0x32
.equ	TIMER0		= 0x32
.equ	TCNT1H		= 0x2d
.equ	TCNT1L		= 0x2c
.equ	TCNT2		= 0x24
.equ	TIMER2		= 0x24
.equ	COUNTER2		= 0x24
.equ	COMPARE2		= 0x23
.equ	PORTB		= 0x18
.equ	PORTC		= 0x15
.equ	PORTD		= 0x12
.equ	ADMUX		= 0x07
.equ	selfprgen		= 0
.equ	EEPE		= 1
.equ	OR		= 3
.equ	SPMaddr		= 0x012
.equ	SP		= 0x3d
.equ	TCNT1		= 0x2c
.equ	OCR1A		= 0x2a
.equ	OCR1B		= 0x28
.equ	ICR1		= 0x26
.equ	EEAR		= 0x1e
.equ	ADC		= 0x04
.equ	TIMER1		= 0x2c
.equ	COMPARE1A		= 0x2a
.equ	COMPARE1B		= 0x28
.equ	CAPTURE1		= 0x26
.equ	RXC0		= 7
.equ	TXC0		= 6
.equ	UDRE0		= 5
.equ	UCSR0A		= 0x0b
.equ	UCSR0B		= 0x0a
.equ	RXCIE0		= 7
.equ	TXCIE0		= 6
.equ	UDRIE0		= 5
.equ	DOR0		= 3
.equ	URXC0addr		= 0x000b
.equ	UTXC0addr		= 0x000d
.equ	UDRE0addr		= 0x000c
.equ	STCaddr		= 0x000a
	 
	;Low Block A
.def	_LA0		= R0
.def	_LA1		= R1
.def	_LA2		= R2
.def	_LA3		= R3
	;Low Block B
.def	_LB0		= R4
.def	_LB1		= R5
.def	_LB2		= R6
.def	_LB3		= R7
	;Temp Block A
.def	_TMP0		= R8
.def	_TMP1		= R9
.def	_TMP2		= R10
.def	_TMP3		= R11
	;Temp Block B
.def	_TMPA		= R12
.def	_TMPB		= R13
.def	_TMPC		= R14
.def	_TMPD		= R15
	;High Block A
.def	_HA0		= R16
.def	_HA1		= R17
.def	_HA2		= R18
.def	_HA3		= R19
	;High Block B
.def	_HB0		= R20
.def	_HB1		= R21
.def	_HB2		= R22
.def	_HB3		= R23
	;Pointers
.def	WL		= R24
.def	WH		= R25
.def	XL		= R26
.def	XH		= R27
.def	YL		= R28
.def	YH		= R29
.def	ZL		= R30
.def	ZH		= R31
	 
	 
	.dseg
	.org		sramStart
	;[start of internal global vars]
.set	GPIOR0		= sramStart+0
	.org		sramStart+1
.set	GPIOR1		= sramStart+1
	.org		sramStart+2
	;[end of internal global vars]
	.cseg
	 
	.cseg
flash:
	;ISR VECTORS
	.org		0x0000
	rjmp		_LUNA_MAIN
	.org		intVectorSize
	 
_LUNA_MAIN:
	cli
	ldi		_HA0,hi8(sramEnd)	; 0b00000100 0x04 4
	out		SPH,_HA0
	ldi		_HA0,lo8(sramEnd)	; 0b01011111 0x5F 95
	out		SPL,_HA0
	rcall		_SRAM_CLEAR
	 
	;{40}{ PortC.6.mode = output,low } -------------------------------------
	sbi		DDRC,6
	cbi		PORTC,6
	;{41}{ PortD.0.mode = output,high } ------------------------------------
	sbi		DDRD,0
	sbi		PORTD,0
	;{42}{ PortB.6.mode = output,high } ------------------------------------
	sbi		DDRB,6
	sbi		PORTB,6
	;{43}{ PortD.2.mode = output,high } ------------------------------------
	sbi		DDRD,2
	sbi		PORTD,2
	;{44}{ PortD.1.mode = output,high } ------------------------------------
	sbi		DDRD,1
	sbi		PORTD,1
	;{46}{ PortD.3.mode = output,high } ------------------------------------
	sbi		DDRD,3
	sbi		PORTD,3
	;{47}{ PortD.4.mode = output,low } -------------------------------------
	sbi		DDRD,4
	cbi		PORTD,4
	;{48}{ PortB.7.mode = output,low } -------------------------------------
	sbi		DDRB,7
	cbi		PORTB,7
	;{49}{ PortD.5.mode = output,high } ------------------------------------
	sbi		DDRD,5
	sbi		PORTD,5
	;{50}{ PortD.6.mode = output,low } -------------------------------------
	sbi		DDRD,6
	cbi		PORTD,6
	;{51}{ PortD.7.mode = output,high } ------------------------------------
	sbi		DDRD,7
	sbi		PORTD,7
	;{52}{ PortB.0.mode = output,low } -------------------------------------
	sbi		DDRB,0
	cbi		PORTB,0
	;{59}{ do } ------------------------------------------------------------
_do0:
	;{67}{ waitms 100 } ----------------------------------------------------
	ldi		_HA0,0x64	; 0b01100100 0x64 100
	ldi		_HA1,0x00	; 0b00000000 0x00 0
	rcall		_waitms
	;{68}{ PortD.3.toggle } ------------------------------------------------
	in		_HA0,PORTD
	ldi		_HA1,(1 << 3)	; 0b00001000 0x08 8
	eor		_HA0,_HA1
	out		PORTD,_HA0
	;{69}{ PortD.4.toggle } ------------------------------------------------
	in		_HA0,PORTD
	ldi		_HA1,(1 << 4)	; 0b00010000 0x10 16
	eor		_HA0,_HA1
	out		PORTD,_HA0
	;{70}{ PortB.7.toggle } ------------------------------------------------
	in		_HA0,PORTB
	ldi		_HA1,(1 << 7)	; 0b10000000 0x80 128
	eor		_HA0,_HA1
	out		PORTB,_HA0
	;{71}{ PortD.5.toggle } ------------------------------------------------
	in		_HA0,PORTD
	ldi		_HA1,(1 << 5)	; 0b00100000 0x20 32
	eor		_HA0,_HA1
	out		PORTD,_HA0
	;{72}{ PortD.6.toggle } ------------------------------------------------
	in		_HA0,PORTD
	ldi		_HA1,(1 << 6)	; 0b01000000 0x40 64
	eor		_HA0,_HA1
	out		PORTD,_HA0
	;{73}{ PortD.7.toggle } ------------------------------------------------
	in		_HA0,PORTD
	ldi		_HA1,(1 << 7)	; 0b10000000 0x80 128
	eor		_HA0,_HA1
	out		PORTD,_HA0
	;{74}{ PortB.0.toggle } ------------------------------------------------
	in		_HA0,PORTB
	ldi		_HA1,(1 << 0)	; 0b00000001 0x01 1
	eor		_HA0,_HA1
	out		PORTB,_HA0
	;{75}{ loop } ----------------------------------------------------------
_do0until:
	rjmp		_do0
_do0break:
.importObject	avr.MainStd.Waitms
.importObject	avr.Sram.Clear
	;obj{end}---------------------------------------------------------------
_data:
	.eseg
eeprom:
	.cseg
	;start of unused (dynamic) sram
	.DSEG
_MALLOC:
	.CSEG